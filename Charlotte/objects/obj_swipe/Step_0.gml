if(!global.inDialogue &&
	!is_undefined(ds_map_find_value(global.choices, "swipe")) &&
	ds_map_find_value(global.choices, "swipe") == 2
	){
	if(y < 440){
		y += 5
		image_speed = 1
		sprite_index = spr_subwayguy_front
	}else if(x > 355){
		x -= 5
		image_speed = 1
		sprite_index = spr_subwayguy_left
	}
}

if(x <= 355 && y >= 440){
	if(image_index <= 1){
		image_speed = 0
		image_index = 0
	}
}