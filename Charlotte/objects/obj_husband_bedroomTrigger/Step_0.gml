if(y < 200){
	y += 5	
}else{
	if(image_index <= 1){
		image_speed = 0
		image_index = 0
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
}