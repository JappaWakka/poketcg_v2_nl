; set the default game palettes
; BGP0 to BGP5 and OBP1 on CGB
_SetDefaultConsolePalettes::
	ld a, $04
	ld [wTextBoxFrameType], a
	ld de, CGBDefaultPalettes
	ld hl, wBackgroundPalettesCGB
	ld c, 5 palettes
	call CopyNBytesFromDEToHL
	ld de, CGBDefaultPalettes
	ld hl, wObjectPalettesCGB
	ld c, CGB_PAL_SIZE
	call CopyNBytesFromDEToHL
	jp FlushAllPalettes


; no entries for background palettes 5-7 or object palettes 1-7
CGBDefaultPalettes:
; BGP0 and OBP0
	rgb 28, 28, 24 ; [e0e0c0] (cream, background color)
	rgb 21, 21, 16 ; [a8a880] (darker cream)
	rgb 10, 10, 8  ; [505040] (even darker cream)
	rgb 0, 0, 0    ; [000000] (black)
; BGP1
	rgb 28, 28, 24 ; [e0e0c0] (cream, background color)
	rgb 30, 29, 0  ; [f0e800] (yellow, Lightning Energy icon color)
	rgb 30, 3, 0   ; [f01800] (red, Fire Energy icon color)
	rgb 0, 0, 0    ; [000000] (black)
; BGP2
	rgb 28, 28, 24 ; [e0e0c0] (cream, background color)
	rgb 0, 18, 0   ; [009000] (green, Grass Energy icon color)
	rgb 12, 11, 20 ; [6058a0] (blue, Water Energy icon color)
	rgb 0, 0, 0    ; [000000] (black)
; BGP3
	rgb 28, 28, 24 ; [e0e0c0] (cream, background color)
	rgb 22, 0, 22  ; [b000b0] (magenta, Psychic Energy icon color)
	rgb 27, 7, 3   ; [d83818] (dark orange, Fighting Energy icon color)
	rgb 0, 0, 0    ; [000000] (black)
; BGP4
	rgb 28, 28, 24 ; [e0e0c0] (cream, background color)
	rgb 26, 10, 0  ; [d05000] (orange, menu border color)
	rgb 28, 0, 0   ; [e00000] (red, menu border color)
	rgb 0, 0, 0    ; [000000] (black)
