event_inherited();

global.sfx_volume -= 0.25

if global.sfx_volume < 0
{
	global.sfx_volume = 1
}