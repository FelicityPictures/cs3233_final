if(global.inDialogue){
	if(keyboard_check_pressed(vk_space) && currentProgress + 1 <= array_length_1d(narrationSequence)){
		// if first choice
		currentProgress = (currentProgress * 2) + 1
	
		//if second choice
		// currentProgress = (currentProgress * 2) + 2
	}
}

if(currentProgress >= 0 && currentProgress <= array_length_1d(narrationSequence) - 1){
	global.inDialogue = true
}else{
	narrationSequence = 0
	narrationSequence[0] = 0
	currentProgress = -100
	global.inDialogue = false
}
