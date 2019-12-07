if(global.inDialogue){
	if(keyboard_check_pressed(vk_space) && currentProgress + 1 <= array_length_1d(narrationSequence)){
		// uses array to branch
		if(currentInteraction == "client_father" && currentProgress == 15){
			ds_map_add(global.choices, "small client", choice)
			newChoice = instance_create_depth(0, 250, -100, obj_choiceCreation)
			newChoice.choiceNumber = choice
			c = choice - 1
			newChoice.interaction = (narrationSequence[currentProgress])
			newChoice.interaction = newChoice.interaction[c]
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
	if(!is_undefined(ds_map_find_value(itemInteraction, "client_father")) && 
		instance_find(obj_client_father, 0) == noone){
		room_goto_next()
	}
}