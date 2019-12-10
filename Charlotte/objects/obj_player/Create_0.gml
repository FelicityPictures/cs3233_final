velocity = 5
image_speed = 0
/*
if (not audio_is_playing(bg_bgm)){
	if (room == rm_start) or (room == rm_bedroom1)
	or (room == rm_kitchen1) or (room == rm_kitchen2) or (room == rm_bedroom2){
		audio_play_sound(bg_bgm, 1, true)
	}
	else if (room == rm_subway){
		audio_play_sound(bg_subway, 1, true)
	}
	else if (room == lawfirm1)
}

*/
if not audio_is_playing(bg_bgm){
	audio_play_sound(bg_bgm, 1, true)
}