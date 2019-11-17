if(currentProgress >= 0 && currentProgress + 1 <= array_length_1d(narrationSequence)){
	global.inDialogue = true
}else{
	global.inDialogue = false	
}
if(global.inDialogue){
	if(keyboard_check(vk_space) && currentProgress + 1 <= array_length_1d(narrationSequence)){
		// if first choice
		currentProgress = (currentProgress * 2) + 1
	
		//if second choice
		// currentProgress = (currentProgress * 2) + 2
	}
}