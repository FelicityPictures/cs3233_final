if(keyboard_check_pressed(vk_enter)){
	if(room == rm_playAgain){
		room_goto(rm_start)
	}else if(room == rm_start){
		room_goto_next()
	}
}