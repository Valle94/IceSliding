function camera_move()
{
	var cam_x = x - camera_get_view_width(view_camera[0])/2
	var cam_y = y - camera_get_view_height(view_camera[0])/2
	cam_x = clamp(cam_x, -32, room_width - camera_get_view_width(view_camera[0])-32)
	cam_y = clamp(cam_y, -32, room_height - camera_get_view_height(view_camera[0])-32)
	camera_set_view_pos(view_camera[0], cam_x+32, cam_y+32)
}