/// @description Draw Grid Lines

draw_set_color(c_black)
draw_set_alpha(0.4)

//for (var i = 0; i <= max(room_width, room_height); i += TILE_HEIGHT)
//{
//	draw_line(0, i, room_width, i)
//	draw_line(i, 0, i, room_height)
//}

draw_set_alpha(1)

draw_set_font(Font1)
draw_text(64, 64, state)

draw_set_halign(fa_right)
draw_text(room_width - 64, 64, _direction)