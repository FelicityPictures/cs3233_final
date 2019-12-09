if(global.inDialogue and currentProgress >= 0 and currentProgress <= array_length_1d(narrationSequence) - 1){
	drawDialogueBox(narrationSequence[currentProgress], choice)
}