if(room == rm_start){
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_text_transformed(room_width/2, (room_height/2)-250, "Charlotte", 10, 10, 0)
	draw_text_ext_transformed(room_width/2, (room_height/2) + 20, "Hell is... well, hell. It sucks. I want to get out. Maybe if I get another chance at life, I can change my score so that I'll end up in Heaven the second time around...", 30, room_width/1.7, 1.5, 1.5, 0)
	draw_text(room_width/2, (room_height/2)+200, "Use arrow keys to move and the spacebar to interact with objects.")
	draw_text(room_width/2, (room_height/2)+240, "Press enter to begin.")
}