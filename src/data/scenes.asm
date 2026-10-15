ScenePointers:
	table_width 2, ScenePointers
	dw Scene_TitleScreen
	dw Scene_ColosseumBooster
	dw Scene_EvolutionBooster
	dw Scene_MysteryBooster
	dw Scene_LaboratoryBooster
	dw Scene_CharizardIntro
	dw Scene_ScytherIntro
	dw Scene_AerodactylIntro
	dw Scene_GradientBlackAndRed
	dw Scene_GradientWhiteAndRed
	dw Scene_GradientBlackAndGreen
	dw Scene_GradientWhiteAndGreen
	dw Scene_ColorWheel
	dw Scene_ColorTest
	dw Scene_GameBoyLinkConnecting
	dw Scene_GameBoyLinkTransmitting
	dw Scene_GameBoyLinkNotConnected
	dw Scene_GameBoyPrinterTransmitting
	dw Scene_GameBoyPrinterNotConnected
	dw Scene_CardPop
	dw Scene_CardPopError
	dw Scene_Nintendo
	dw Scene_Companies
	dw Scene_Copyright
	dw Scene_ColorPalette
	assert_table_length NUM_SCENES

; format:
; db palette (cgb), palette offset
; db tilemap (cgb), vram tile offset, vram0 or vram1
; db sprite
;
; if sprite is non-zero:
; db palette (cgb), palette offset
; db animation (cgb), x offset, y offset
; dw 0-terminator

Scene_TitleScreen:
	db PALETTE_25, $00
	db TILEMAP_TITLE_SCREEN, $00, $00
	db $00

Scene_ColosseumBooster:
	db PALETTE_101, $01
	db TILEMAP_COLOSSEUM, $80, $00
	db SPRITE_BOOSTER_PACK_OAM
	db PALETTE_117, $00
	db SPRITE_ANIM_189, $00, $00
	dw $00

Scene_EvolutionBooster:
	db PALETTE_102, $01
	db TILEMAP_EVOLUTION, $80, $00
	db SPRITE_BOOSTER_PACK_OAM
	db PALETTE_117, $00
	db SPRITE_ANIM_189, $00, $00
	dw $00

Scene_MysteryBooster:
	db PALETTE_103, $01
	db TILEMAP_MYSTERY, $80, $00
	db SPRITE_BOOSTER_PACK_OAM
	db PALETTE_117, $00
	db SPRITE_ANIM_189, $00, $00
	dw $00

Scene_LaboratoryBooster:
	db PALETTE_104, $01
	db TILEMAP_LABORATORY, $80, $00
	db SPRITE_BOOSTER_PACK_OAM
	db PALETTE_117, $00
	db SPRITE_ANIM_189, $00, $00
	dw $00

Scene_CharizardIntro:
	db PALETTE_105, $01
	db TILEMAP_CHARIZARD_INTRO, $80, $00
	db $00

Scene_ScytherIntro:
	db PALETTE_106, $01
	db TILEMAP_SCYTHER_INTRO, $80, $00
	db $00

Scene_AerodactylIntro:
	db PALETTE_107, $01
	db TILEMAP_AERODACTYL_INTRO, $80, $00
	db $00

Scene_GradientBlackAndRed:
	dw NULL
	dw NULL
	db PALETTE_94, $00
	db TILEMAP_SOLID_TILES_1, $01, $00
	db $00

Scene_GradientWhiteAndRed:
	dw NULL
	dw NULL
	db PALETTE_95, $00
	db TILEMAP_SOLID_TILES_1, $01, $00
	db $00

Scene_GradientBlackAndGreen:
	dw NULL
	dw NULL
	db PALETTE_96, $00
	db TILEMAP_SOLID_TILES_1, $01, $00
	db $00

Scene_GradientWhiteAndGreen:
	dw NULL
	dw NULL
	db PALETTE_97, $00
	db TILEMAP_SOLID_TILES_1, $01, $00
	db $00

Scene_ColorWheel:
	dw NULL
	dw NULL
	db PALETTE_98, $00
	db TILEMAP_SOLID_TILES_2, $01, $00
	db $00

Scene_ColorTest:
	dw NULL
	dw NULL
	db PALETTE_99, $00
	db TILEMAP_SOLID_TILES_3, $01, $00
	db $00

Scene_ColorPalette:
	dw NULL
	dw NULL
	db PALETTE_110, $00
	db TILEMAP_SOLID_TILES_4, $fc, $01
	db $00

Scene_GameBoyLinkConnecting:
	db PALETTE_111, $00
	db TILEMAP_GAMEBOY_LINK_CONNECTING, $90, $00
	db $00

Scene_GameBoyLinkTransmitting:
	db PALETTE_111, $00
	db TILEMAP_GAMEBOY_LINK, $90, $00
	db SPRITE_LINK
	db PALETTE_114, $00
	db SPRITE_ANIM_176, $50, $50
	dw $00

Scene_GameBoyLinkNotConnected:
	db PALETTE_111, $00
	db TILEMAP_GAMEBOY_LINK, $90, $00
	db SPRITE_LINK
	db PALETTE_114, $00
	db SPRITE_ANIM_177, $50, $50
	dw $00

Scene_GameBoyPrinterTransmitting:
	db PALETTE_112, $00
	db TILEMAP_GAMEBOY_PRINTER, $90, $00
	db SPRITE_PRINTER
	db PALETTE_115, $00
	db SPRITE_ANIM_181, $50, $30
	dw $00

Scene_GameBoyPrinterNotConnected:
	db PALETTE_112, $00
	db TILEMAP_GAMEBOY_PRINTER, $90, $00
	db SPRITE_PRINTER
	db PALETTE_115, $00
	db SPRITE_ANIM_182, $50, $30
	dw $00

Scene_CardPop:
	db PALETTE_113, $00
	db TILEMAP_CARD_POP, $80, $00
	db SPRITE_CARD_POP
	db PALETTE_116, $00
	db SPRITE_ANIM_185, $50, $40
	dw $00

Scene_CardPopError:
	db PALETTE_113, $00
	db TILEMAP_CARD_POP, $80, $00
	db SPRITE_CARD_POP
	db PALETTE_116, $00
	db SPRITE_ANIM_186, $50, $40
	dw $00

Scene_Nintendo:
	db PALETTE_27, $00
	db TILEMAP_NINTENDO, $00, $00
	db $00

Scene_Companies:
	db PALETTE_28, $00
	db TILEMAP_COMPANIES, $00, $00
	db $00

Scene_Copyright:
	db PALETTE_26, $00
	db TILEMAP_COPYRIGHT, $00, $00
	db $00
