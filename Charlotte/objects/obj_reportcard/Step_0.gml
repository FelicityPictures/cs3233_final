if keyboard_check(vk_enter) {
	pagenumber++;
	if pagenumber >= 8 {
		room_goto(rm_start)
	}
}