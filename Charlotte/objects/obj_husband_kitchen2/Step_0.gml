if(!global.inDialogue){
	if(x < 944){
		x += 5
		sprite_index = spr_husband_walk_side
		image_xscale = -1
		image_speed = 1
	}else if(y > 160){
		y -= 5
		sprite_index = spr_husband_walk_up
		image_xscale = 1
		image_speed = 1
	}
}

if(x >= 944 && y <= 160){
	instance_destroy()	
}