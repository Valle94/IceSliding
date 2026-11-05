// Player movement using WASD or Arrow Keys
if (state == states.idle)
{
	if keyboard_check(vk_left) or keyboard_check(ord("A"))
	{
		move(directions.left)
		_direction = directions.left
		sprite_index = sprites[2]
		//audio_play_sound(snd_walk, 1, false, global.sfx_volume)
	}
	else if keyboard_check(vk_right) or keyboard_check(ord("D"))
	{
		move(directions.right)
		_direction = directions.right
		sprite_index = sprites[3]
		//audio_play_sound(snd_walk, 1, false, global.sfx_volume)
	}
	else if keyboard_check(vk_up) or keyboard_check(ord("W"))
	{
		move(directions.up)
		_direction = directions.up
		sprite_index = sprites[0]
		//audio_play_sound(snd_walk, 1, false, global.sfx_volume)
	}
	else if keyboard_check(vk_down) or keyboard_check(ord("S"))
	{
		move(directions.down)
		_direction = directions.down
		sprite_index = sprites[1]
		//audio_play_sound(snd_walk, 1, false, global.sfx_volume)
	}
}

// This statement animates the player moving between tiles
if (state == states.walking)
{
	walk_anim_time += delta_time / 1000000
	
	var t = walk_anim_time / walk_anim_length
	
	if (t >= 1)
	{
		walk_anim_time = 0
		t = 1
		state = states.idle	
	}
	
	var _x = lerp(x_from, x_to, t)
	var _y = lerp(y_from, y_to, t)
	
	_x = clamp(_x, 0, (room_width - TILE_WIDTH) / TILE_WIDTH)
	_y = clamp(_y, 0, (room_height - TILE_HEIGHT) / TILE_HEIGHT)
	
	x = _x * TILE_WIDTH
	y = _y * TILE_HEIGHT
	
	if (place_meeting(x_pos*TILE_HEIGHT, y_pos*TILE_HEIGHT, ice_tiles)) 
	and (state == states.idle)
	{
		move(_direction)
	}

}

// Check if the state has changed
if (state != prev_state) {
    // Perform actions when the state changes
    switch (state) {
        case states.idle:
			audio_play_sound(snd_bonk, 1, false, global.sfx_volume)
            break;
        case states.walking:
            audio_play_sound(snd_walk, 1, false, global.sfx_volume)
            break;
    }

    // Update the previous state after handling the change
    prev_state = state;
}

camera_move()

if keyboard_check(vk_space)
{
	room_restart()
}

if keyboard_check(vk_escape)
{
	room_goto(rm_main_menu)
}