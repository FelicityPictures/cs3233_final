// sinfully hardcoded room boundaries
boundary_up = 180
boundary_left = 220
boundary_right = 1060
boundary_down = 605
if (x < boundary_left) { x = boundary_left; }
if (x > boundary_right) { x = boundary_right; }
if (y < boundary_up) { y = boundary_up; }
if (y > boundary_down) { y = boundary_down; }

if(!global.inDialogue){
	if(keyboard_check(vk_right)){
		x += velocity
		bumpedIntoObject = collision_rectangle(x-(sprite_width/2), y+(sprite_height/4),
							   x+(sprite_width/2), y+(sprite_height/2),
							   obj_interact, false, true)
		if(bumpedIntoObject != noone){
			// play bumping sound
			if(!audio_is_playing(sfx_bump)){
				audio_play_sound(sfx_bump, 2, false)
			}
			x -= velocity
		}
		sprite_index = spr_player_walk_side1
		image_xscale = -1
		image_speed = 1
	}else if(keyboard_check(vk_left)){
		x -= velocity
		bumpedIntoObject = collision_rectangle(x-(sprite_width/2), y+(sprite_height/4),
							   x+(sprite_width/2), y+(sprite_height/2),
							   obj_interact, false, true)
		if(bumpedIntoObject != noone){
			// play bumping sound
			if(!audio_is_playing(sfx_bump)){
				audio_play_sound(sfx_bump, 2, false)
			}
			x += velocity
		}
		sprite_index = spr_player_walk_side1
		image_xscale = 1
		image_speed = 1
	}
	else if(keyboard_check(vk_up)){
		y -= velocity
		bumpedIntoObject = collision_rectangle(x-(sprite_width/2), y+(sprite_height/4),
							   x+(sprite_width/2), y+(sprite_height/2),
							   obj_interact, false, true)
		if(bumpedIntoObject != noone){
			// play bumping sound
			if(!audio_is_playing(sfx_bump)){
				audio_play_sound(sfx_bump, 2, false)
			}
			y += velocity
		}
		sprite_index = spr_player_walk_up
		image_speed = 1
	}
	else if(keyboard_check(vk_down)){
		y += velocity
		bumpedIntoObject = collision_rectangle(x-(sprite_width/2), y+(sprite_height/4),
							   x+(sprite_width/2), y+(sprite_height/2),
							   obj_interact, false, true)
		if(bumpedIntoObject != noone){
			// play bumping sound
			if(!audio_is_playing(sfx_bump)){
				audio_play_sound(sfx_bump, 2, false)
			}
			y -= velocity
		}
		sprite_index = spr_player_walk_down
		image_speed = 1
	}
}

// check interactions
if(!global.inDialogue and keyboard_check_pressed(vk_space)){
	if(sprite_index == spr_player_walk_side1 and image_xscale == 1){		//right
		objectInteract = collision_rectangle(x-abs(sprite_width/2), y-(sprite_height/4),
							   x-abs(sprite_width), y+(sprite_height/4),
							   obj_interact, false, true)
	}else if(sprite_index == spr_player_walk_side1 and image_xscale == -1){		//left
		objectInteract = collision_rectangle(x+abs(sprite_width/2), y-(sprite_height/4),
							   x+abs(sprite_width), y+(sprite_height/4),
							   obj_interact, false, true)
	}else if(sprite_index == spr_player_walk_up){		//up
		objectInteract = collision_rectangle(x-(sprite_width/4), y-(sprite_height/2),
							   x+(sprite_width/4), y-sprite_height,
							   obj_interact, false, true)
	}else{		//down
		objectInteract = collision_rectangle(x-(sprite_width/4), y+(sprite_height/2),
							   x+(sprite_width/4), y+sprite_height,
							   obj_interact, false, true)
	}
	if(objectInteract != noone && objectInteract.name != ""){
		dialogueManager = instance_find(obj_dialogueManager, 0)
		dialogueManager.narrationSequence = 0
		for(i = 0; i < array_length_1d(objectInteract.dialogueSequence); i++){
			dialogueManager.narrationSequence[i] = objectInteract.dialogueSequence[i]
		}
		dialogueManager.currentProgress = 0
		dialogueManager.currentInteraction = objectInteract.name
		if(is_undefined(ds_map_find_value(dialogueManager.itemInteraction, objectInteract.name))){
			ds_map_add(dialogueManager.itemInteraction, objectInteract.name, true)
		}
	}
}
else if(keyboard_check(vk_nokey)){
	if(image_index <= 1){
		image_speed = 0
		image_index = 0
	}
}
