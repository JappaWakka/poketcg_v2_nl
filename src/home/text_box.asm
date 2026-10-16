; Applies SCX and SCY correction to xy coordinates at de
; preserves af, bc, and hl
; input:
;	de = screen coordinates to adjust
AdjustCoordinatesForBGScroll::
	push af
	ldh a, [hSCX]
	rra
	rra
	rra
	and $1f
	add d
	ld d, a
	ldh a, [hSCY]
	rra
	rra
	rra
	and $1f
	add e
	ld e, a
	pop af
	ret


; Draws a bxc text box at de printing a name in the left side of the top border.
; The name's text ID must be at hl when this function is called.
; Mostly used to print text boxes for talked-to NPCs, but occasionally used in duels as well.
; input:
;	bc = width and height of the text box being drawn
;	de = screen coordinates at which to start drawing the text box
;	hl = text ID of header name to print
DrawLabeledTextBox::
	push de
	push bc
	push hl
	; top left tile of the box
	ld hl, wc000
	ld a, TX_SYMBOL
	ld [hli], a
	ld a, SYM_BOX_TOP_L
	ld [hli], a
	; white tile before the text
	ldfw a, " "
	ld [hli], a
	; text label
	ld e, l
	ld d, h
	pop hl
	call CopyText
	ld hl, wc000 + 3
	call GetTextLengthInTiles
	ld l, e
	ld h, d
	; white tile after the text
	ld a, TX_HALF2FULL
	ld [hli], a
	ldfw a, " "
	ld [hli], a
	pop de
	push de
	ld a, d
	sub b
	sub $4
	jr z, .draw_top_border_right_tile
	ld b, a
.draw_top_border_line_loop
	ld a, TX_SYMBOL
	ld [hli], a
	ld a, SYM_BOX_TOP
	ld [hli], a
	dec b
	jr nz, .draw_top_border_line_loop

.draw_top_border_right_tile
	ld a, TX_SYMBOL
	ld [hli], a
	ld a, SYM_BOX_TOP_R
	ld [hli], a
	ld [hl], TX_END
	pop bc
	pop de
	push de
	push bc
	ld hl, wc000
	call InitTextPrinting_ProcessText
	pop bc
	pop de
	call DECoordToBGMap0Address
	push de
	call CopyCurrentLineAttrCGB ; BG Map attributes for current line, which is the top border
	pop de
	inc e
	; top border done, draw the rest of the text box
	jr ContinueDrawingTextBoxCGB


; draws a 12x6 text box aligned to the bottom left of the screen
DrawNarrowTextBox::
	lb de, 0, 12
	lb bc, 12, 6
	call AdjustCoordinatesForBGScroll
	jr DrawRegularTextBox

; draws a 20x6 text box aligned to the bottom of the screen
DrawWideTextBox::
	lb de, 0, 12
	lb bc, 20, 6
	call AdjustCoordinatesForBGScroll
;	fallthrough

DrawRegularTextBoxDMG::
	call DECoordToBGMap0Address
	; top line (border) of the text box
	ld a, SYM_BOX_TOP
	lb de, SYM_BOX_TOP_L, SYM_BOX_TOP_R
	call CopyLine
	dec c
	dec c
.draw_text_box_body_loop
	xor a ; SYM_SPACE
	lb de, SYM_BOX_LEFT, SYM_BOX_RIGHT
	call CopyLine
	dec c
	jr nz, .draw_text_box_body_loop
	; bottom line (border) of the text box
	ld a, SYM_BOX_BOTTOM
	lb de, SYM_BOX_BTM_L, SYM_BOX_BTM_R
;	fallthrough

; copies b bytes of data to sp-$1f and to hl, and returns hl += TILEMAP_WIDTH
; b is supposed to be TILEMAP_WIDTH or smaller, else the stack would get corrupted
; preserves bc
; input:
;	d = ID of leftmost tile in the line
;	e = ID of rightmost tile in the line
;	a = ID of every other tile in the line
CopyLine::
	add sp, -TILEMAP_WIDTH
	push hl
	push bc
	ld hl, sp+$4
	dec b
	dec b
	push hl
	ld [hl], d
	inc hl
.loop
	ld [hli], a
	dec b
	jr nz, .loop
	ld [hl], e
	pop de
	pop bc
	pop hl
	push hl
	push bc
	ld c, b
	ld b, $0
	call SafeCopyDataDEtoHL
	pop bc
	pop de
	; advance pointer TILEMAP_WIDTH positions and restore stack pointer
	ld hl, TILEMAP_WIDTH
	add hl, de
	add sp, TILEMAP_WIDTH
	ret


; Draws a bxc text box at de to print menu data in the overworld.
; Also used to print a text box during a duel.
; When talking to NPCs, DrawLabeledTextBox is used instead.
DrawRegularTextBox::
	call DECoordToBGMap0Address
	; top line (border) of the text box
	ld a, SYM_BOX_TOP
	lb de, SYM_BOX_TOP_L, SYM_BOX_TOP_R
	call CopyCurrentLineTilesAndAttrCGB
;	fallthrough

; continues drawing a labeled or regular textbox on CGB:
; body and bottom line of either type of textbox
ContinueDrawingTextBoxCGB::
	dec c
	dec c
.draw_text_box_body_loop
	xor a ; SYM_SPACE
	lb de, SYM_BOX_LEFT, SYM_BOX_RIGHT
	push hl
	call CopyLine
	pop hl
	call BankswitchVRAM1
	ld a, [wTextBoxFrameType] ; on CGB, wTextBoxFrameType determines the palette and the other attributes
	ld e, a
	ld d, a
	xor a ; CGB Background palette 0 (monochrome) 
	call CopyLine
	call BankswitchVRAM0
	dec c
	jr nz, .draw_text_box_body_loop
	; bottom line (border) of the text box
	ld a, SYM_BOX_BOTTOM
	lb de, SYM_BOX_BTM_L, SYM_BOX_BTM_R
;	fallthrough

; Assumes b = SCREEN_WIDTH and that VRAM bank 0 is loaded
; preserves bc
; input:
;	d = ID of top left tile
;	e = ID of top right tile
;	a = ID of every other tile
CopyCurrentLineTilesAndAttrCGB::
	push hl
	call CopyLine
	pop hl
;	fallthrough

; preserves bc
CopyCurrentLineAttrCGB::
	call BankswitchVRAM1
	ld a, [wTextBoxFrameType] ; on CGB, wTextBoxFrameType determines the palette and the other attributes
	ld e, a
	ld d, a
	call CopyLine
	jp BankswitchVRAM0

; creates a subsection within a textbox (useful for making a header)
; by drawing a second bottom row at the specified coordinates
; input:
;	b = length of the row in tiles (usually SCREEN_WIDTH, i.e. 20)
;	de = coordinates to print line
DrawTextBoxSeparator::
	ld c, 1
	push bc
	push de
	call DECoordToBGMap0Address
	ld a, SYM_BOX_BOTTOM
	lb de, SYM_BOX_HEADER_L, SYM_BOX_HEADER_R
	push hl
	call CopyLine
	pop hl
	pop de
	pop bc
	ld a, [wConsole]
	cp CONSOLE_CGB
	jr z, CopyCurrentLineAttrCGB
	ret
