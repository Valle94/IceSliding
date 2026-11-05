///@function move(direction)
///@param {index} direction The input direction

function move(dir)
{
	var components = global.components[dir]
	var dx = components[0]
	var dy = components[1]
	
	if (state == states.idle || state == states.sliding)
	{
		x_from = x_pos
		y_from = y_pos
	
		x_to = x_pos + dx
		y_to = y_pos + dy
	
		if !place_meeting(x_to*TILE_WIDTH, y_to*TILE_HEIGHT, obj_player.obstacles)
		{
			x_pos = x_to
			y_pos = y_to
		
			x_pos = clamp(x_pos, 0, (room_width - TILE_WIDTH) / TILE_WIDTH)
			y_pos = clamp(y_pos, 0, (room_height - TILE_WIDTH) / TILE_HEIGHT)
	
			state = states.walking
			
		}
	}
}