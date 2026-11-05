// This variable will hold the last movement we did
// which will be repeated when we slide
_direction = ""

// State machine for the player
enum states
{
	idle,
	walking,
	sliding,
	finished
}

// Initialize state as idle
state = states.idle
prev_state = states.idle

// Initialize all tiles in the 'Tiles_Ice' layer as a variable
// We can pass this variable as an argument for collision purposes
ice_tiles = layer_tilemap_get_id("Tiles_Ice");
obstacles = layer_tilemap_get_id("Tiles_Obstacles")

// X and Y pos each represent a coordinate that the player is in
// based on a grid of a certain pixel size. 
x_pos = x div TILE_WIDTH
y_pos = y div TILE_HEIGHT

// Similarly, we want a reference to the tile we are from and the
// tile we are moving to. Those variables are stored here. 
x_from = x_pos
y_from = x_pos

x_to = x_pos
y_to = y_pos

walk_anim_length = 0.15 // This is the amount of time it takes to 
					   // move from one tile to the next.
					   
walk_anim_time = 0	   // This is how far through the walking animation
					   // in seconds. 

// The following switch handles instantiating specific sprites
// depending on the character option the player selects.
switch (global.player) {
    case "Racoon":
        sprites = global.racoon_sprites;
        sprite_index = sprites[1];
        break;
    case "Fox":
        sprites = global.fox_sprites;
        sprite_index = sprites[1];
        break;
    case "GCat":
        sprites = global.gcat_sprites;
        sprite_index = sprites[1];
        break;
    case "OCat":
        sprites = global.ocat_sprites;
        sprite_index = sprites[1];
        break;
    case "WBird":
        sprites = global.wbird_sprites;
        sprite_index = sprites[1];
        break;
    case "BBird":
        sprites = global.bbird_sprites;
        sprite_index = sprites[1];
        break;
    default:
        break;
}