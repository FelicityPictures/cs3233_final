if keyboard_check_pressed(vk_enter) {
	pagenumber++;
	if pagenumber >= 8 {
		room_goto(rm_start)
	}
}