event_inherited();

global.music_volume -= 0.25

if global.music_volume < 0
{
	global.music_volume = 1
}

audio_sound_gain(snd_ice_path_music, global.music_volume*0.75, 0)