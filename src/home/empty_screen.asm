; initializes the screen by emptying the tilemap.
; used during screen transitions.
EmptyScreen::
	call DisableLCD
	call FillTileMap
	xor a
	ld [wDuelDisplayedScreen], a
	ret
