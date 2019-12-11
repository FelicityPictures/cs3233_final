if keyboard_check_pressed(vk_enter) {
	pagenumber++;
	if pagenumber >= 8 {
		instance_destroy(obj_gameManager)
		room_goto(rm_start)
	}
}