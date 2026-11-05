// This function initializes any variables labelled "global"
// at compile time, before the first room executes. This helps
// to ensure there are no undefined errors later on. 
gml_pragma("global", "MACRO()")

// This macro acts similarly to a global constants
// The difference is they cannot be changed in the game
#macro TILE_WIDTH 64
#macro TILE_HEIGHT 64

//This enumerator holds the possible directions for movement
enum directions
{
	up,
	down,
	left,
	right
}

// Create an empty array that will hold the
// x and y components of each possible direction
global.components = []

// Populate the array with each direction corresponding components
global.components[directions.up] = [0, -1]
global.components[directions.down] = [0, 1]
global.components[directions.left] = [-1, 0]
global.components[directions.right] = [1, 0]

// This group of globals are lists of sprites that correspond to each character option
global.player = "Fox"
global.racoon_sprites = [spr_racoon_up, spr_racoon_down, spr_racoon_left, spr_racoon_right]
global.fox_sprites = [spr_fox_up, spr_fox_down, spr_fox_left, spr_fox_right]
global.gcat_sprites = [spr_gcat_up, spr_gcat_down, spr_gcat_left, spr_gcat_right]
global.ocat_sprites = [spr_ocat_up, spr_ocat_down, spr_ocat_left, spr_ocat_right]
global.wbird_sprites = [spr_wbird_up, spr_wbird_down, spr_wbird_left, spr_wbird_right]
global.bbird_sprites = [spr_bbird_up, spr_bbird_down, spr_bbird_left, spr_bbird_right]

// Global sound settings variables
global.music_volume = 1
global.sfx_volume = 1
global.music = audio_play_sound(snd_ice_path_music, 1, true, global.music_volume*0.75)

// Global list of each room difficulty
global.easy_rooms = [rm_easy_01, rm_easy_02, rm_easy_03, rm_easy_04, rm_easy_05,
	                rm_easy_06, rm_easy_07, rm_easy_08, rm_easy_09, rm_easy_10];
global.medium_rooms = [rm_med_01, rm_med_02, rm_med_03, rm_med_04, rm_med_05,
	                rm_med_06, rm_med_07, rm_med_08, rm_med_09, rm_med_10];
global.hard_rooms = [rm_hard_01, rm_hard_02, rm_hard_03, rm_hard_04, rm_hard_05,
	                rm_hard_06, rm_hard_07, rm_hard_08, rm_hard_09, rm_hard_10];