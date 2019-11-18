if(global.inDialogue and currentProgress >= 0 and currentProgress <= array_length_1d(narrationSequence) - 1){
	drawDialogueBox(narrationSequence[currentProgress])
}
draw_set_color(c_blue)
draw_rectangle(0,0,100,100,true)