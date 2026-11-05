if state = states.idle
{
	audio_play_sound(snd_level_complete, 1, false, global.sfx_volume)
	state = states.finished
	alarm[0] = 60
}