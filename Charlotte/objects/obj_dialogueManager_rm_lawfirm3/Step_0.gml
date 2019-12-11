if(global.inDialogue){
	if(keyboard_check_pressed(vk_space) && currentProgress + 1 <= array_length_1d(narrationSequence)){
		// uses array to branch
		if(currentInteraction == "big_choice" && currentProgress == 1){
			ds_map_add(global.choices, "big_choice", choice)
		}
		currentProgress = (currentProgress * 2) + choice
	}
}

if(currentProgress >= 0 && currentProgress <= array_length_1d(narrationSequence) - 1){
	global.inDialogue = true
}else{
	narrationSequence = 0
	narrationSequence[0] = [0]
	currentProgress = -100
	currentInteraction = ""
	global.inDialogue = false
}

if(global.inDialogue && array_length_1d(narrationSequence[currentProgress]) > 1){
	if(keyboard_check_pressed(vk_down)){
		choice++
		if(choice > 2){
			choice = 1
		}
	}else if(keyboard_check_pressed(vk_up)){
		choice--
		if(choice < 1){
			choice = 2
		}
	}
}else{
	choice = 1
}

if(!global.inDialogue){
	client = instance_find(obj_client_bad, 0)
	if(client != noone){
		client.image_speed = 1
		client.image_xscale = 1
		if(client.y < 410){
			client.y += 5	
			client.sprite_index = spr_bad_client_front
		}else if(client.x > 200){
			client.x -= 5
			client.sprite_index = spr_bad_client_left
		}
		
		// exit client
		if(client.x <= 200 && client.y >= 410){
			instance_destroy(client)
			asked = true
			narrationSequence = 0
			narrationSequence[0] = ["So what's it gonna be?"]
			narrationSequence[1] = ["I guess I have to help him. It's my job after all...", "I don't want to go back to Hell. He can go to jail."]
			currentProgress = 0
			currentInteraction = "big_choice"
		}
	}else if(asked){
		calculateScore()
		if(ds_map_find_value(global.choices, "big_choice") == 1){
			room_goto(rm_bedroom_final)
		}else{
			room_goto(rm_jail_final)
		}
	}
}