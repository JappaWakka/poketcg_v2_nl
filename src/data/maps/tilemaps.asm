OverworldMapTilemap::
	INCBIN "data/maps/tiles/dimensions/overworld_map.dimensions"
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/overworld_map.bgmap.lz"

MasonLaboratoryTilemap::
	INCBIN "data/maps/tiles/dimensions/mason_laboratory.dimensions"
	dw MasonLaboratoryPermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/mason_laboratory.bgmap.lz"
MasonLaboratoryPermissions:
	INCBIN "data/maps/permissions/mason_laboratory.bin.lz"

ChallengeMachineMapEventTilemap::
	INCBIN "data/maps/tiles/dimensions/challenge_machine_map_event.dimensions"
	dw ChallengeMachineMapEventPermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/challenge_machine_map_event.bgmap.lz"
ChallengeMachineMapEventPermissions:
	INCBIN "data/maps/permissions/challenge_machine_map_event.bin.lz"

DeckMachineRoomTilemap::
	INCBIN "data/maps/tiles/dimensions/deck_machine_room.dimensions"
	dw DeckMachineRoomPermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/deck_machine_room.bgmap.lz"
DeckMachineRoomPermissions:
	INCBIN "data/maps/permissions/deck_machine_room.bin.lz"

DeckMachineMapEventTilemap::
	INCBIN "data/maps/tiles/dimensions/deck_machine_map_event.dimensions"
	dw DeckMachineMapEventPermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/deck_machine_map_event.bgmap.lz"
DeckMachineMapEventPermissions:
	INCBIN "data/maps/permissions/deck_machine_map_event.bin.lz"

IshiharaTilemap::
	INCBIN "data/maps/tiles/dimensions/ishihara.dimensions"
	dw IshiharaPermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/ishihara.bgmap.lz"
IshiharaPermissions:
	INCBIN "data/maps/permissions/ishihara.bin.lz"

FightingClubEntranceTilemap::
	INCBIN "data/maps/tiles/dimensions/fighting_club_entrance.dimensions"
	dw FightingClubEntrancePermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/fighting_club_entrance.bgmap.lz"
FightingClubEntrancePermissions:
	INCBIN "data/maps/permissions/fighting_club_entrance.bin.lz"

RockClubEntranceTilemap::
	INCBIN "data/maps/tiles/dimensions/rock_club_entrance.dimensions"
	dw RockClubEntrancePermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/rock_club_entrance.bgmap.lz"
RockClubEntrancePermissions:
	INCBIN "data/maps/permissions/rock_club_entrance.bin.lz"

WaterClubEntranceTilemap::
	INCBIN "data/maps/tiles/dimensions/water_club_entrance.dimensions"
	dw WaterClubEntrancePermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/water_club_entrance.bgmap.lz"
WaterClubEntrancePermissions:
	INCBIN "data/maps/permissions/water_club_entrance.bin.lz"

LightningClubEntranceTilemap::
	INCBIN "data/maps/tiles/dimensions/lightning_club_entrance.dimensions"
	dw LightningClubEntrancePermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/lightning_club_entrance.bgmap.lz"
LightningClubEntrancePermissions:
	INCBIN "data/maps/permissions/lightning_club_entrance.bin.lz"

GrassClubEntranceTilemap::
	INCBIN "data/maps/tiles/dimensions/grass_club_entrance.dimensions"
	dw GrassClubEntrancePermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/grass_club_entrance.bgmap.lz"
GrassClubEntrancePermissions:
	INCBIN "data/maps/permissions/grass_club_entrance.bin.lz"

PsychicClubEntranceTilemap::
	INCBIN "data/maps/tiles/dimensions/psychic_club_entrance.dimensions"
	dw PsychicClubEntrancePermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/psychic_club_entrance.bgmap.lz"
PsychicClubEntrancePermissions:
	INCBIN "data/maps/permissions/psychic_club_entrance.bin.lz"

ScienceClubEntranceTilemap::
	INCBIN "data/maps/tiles/dimensions/science_club_entrance.dimensions"
	dw ScienceClubEntrancePermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/science_club_entrance.bgmap.lz"
ScienceClubEntrancePermissions:
	INCBIN "data/maps/permissions/science_club_entrance.bin.lz"

FireClubEntranceTilemap::
	INCBIN "data/maps/tiles/dimensions/fire_club_entrance.dimensions"
	dw FireClubEntrancePermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/fire_club_entrance.bgmap.lz"
FireClubEntrancePermissions:
	INCBIN "data/maps/permissions/fire_club_entrance.bin.lz"

ChallengeHallEntranceTilemap::
	INCBIN "data/maps/tiles/dimensions/challenge_hall_entrance.dimensions"
	dw ChallengeHallEntrancePermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/challenge_hall_entrance.bgmap.lz"
ChallengeHallEntrancePermissions:
	INCBIN "data/maps/permissions/challenge_hall_entrance.bin.lz"

ClubLobbyTilemap::
	INCBIN "data/maps/tiles/dimensions/club_lobby.dimensions"
	dw ClubLobbyPermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/club_lobby.bgmap.lz"
ClubLobbyPermissions:
	INCBIN "data/maps/permissions/club_lobby.bin.lz"

FightingClubTilemap::
	INCBIN "data/maps/tiles/dimensions/fighting_club.dimensions"
	dw FightingClubPermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/fighting_club.bgmap.lz"
FightingClubPermissions:
	INCBIN "data/maps/permissions/fighting_club.bin.lz"

RockClubTilemap::
	INCBIN "data/maps/tiles/dimensions/rock_club.dimensions"
	dw RockClubPermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/rock_club.bgmap.lz"
RockClubPermissions:
	INCBIN "data/maps/permissions/rock_club.bin.lz"

PokemonDomeDoorMapEventTilemap::
	INCBIN "data/maps/tiles/dimensions/pokemon_dome_door_map_event.dimensions"
	dw PokemonDomeDoorMapEventPermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/pokemon_dome_door_map_event.bgmap.lz"
PokemonDomeDoorMapEventPermissions:
	INCBIN "data/maps/permissions/pokemon_dome_door_map_event.bin.lz"

HallOfHonorDoorMapEventTilemap::
	INCBIN "data/maps/tiles/dimensions/hall_of_honor_door_map_event.dimensions"
	dw HallOfHonorDoorMapEventPermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/hall_of_honor_door_map_event.bgmap.lz"
HallOfHonorDoorMapEventPermissions:
	INCBIN "data/maps/permissions/hall_of_honor_door_map_event.bin.lz"

GrassMedalTilemap::
	INCBIN "data/maps/tiles/dimensions/grass_medal.dimensions"
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/grass_medal.bgmap.lz"

AnimData1::
	frame_table AnimFrameTable0
	frame_data 3, 16, 0, 0
	frame_data 4, 16, 0, 0
	frame_data 0, 0, 0, 0
