// entering room
if(image_xscale == -1){
	if(x < 710){
		x += 5
	}else if(image_index <= 1){
		image_speed = 0
		image_index = 0
	}
}else if(image_xscale == 1){ // exiting room
	if(x > -10){
		x -= 5	
	}else{
		instance_destroy()
	}
}

if(image_speed == 0 and !talked){
	dialogueManager = instance_find(obj_dialogueManager, 0)
	dialogueManager.narrationSequence = 0
	for(i = 0; i < array_length_1d(dialogueSequence); i++){
		dialogueManager.narrationSequence[i] = dialogueSequence[i]
	}
	dialogueManager.currentProgress = 0
	if(is_undefined(ds_map_find_value(dialogueManager.itemInteraction, name))){
		ds_map_add(dialogueManager.itemInteraction, name, true)
	}
	talked = true
}else if(talked && !global.inDialogue){
	image_xscale = 1
	image_speed = 1
}