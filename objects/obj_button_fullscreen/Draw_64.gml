draw_set_halign(fa_center)

if room == rm_settings
{
	draw_set_font(fnt_font_buttons)
	draw_text(400, 304, string_format(global.music_volume*100, 2, 0) + "%")
	draw_text(400, 416, string_format(global.sfx_volume*100, 2, 0) + "%")
}