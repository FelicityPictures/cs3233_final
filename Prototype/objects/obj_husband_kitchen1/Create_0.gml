name = "husband"
image_speed = 0

dialogueSequence[0] = ["How is your poke?"]
dialogueSequence[1] = ["I hate it.", 
					   "Delicious! It's like I haven't eaten for years."]
					   
dialogueSequence[3] = ["Oh. Okay... (this is her favorite dish...)"]

dialogueSequence[4] = ["I'm glad to hear. It's your favorite food after all."]

dialogueSequence[7] = ["Oh yeah. I almost forgot to say. Your office called and said you had to go back to work tomorrow."]
dialogueSequence[8] = ["Oh yeah. I almost forgot to say. Your office called and said you had to go back to work tomorrow."]
dialogueSequence[9] = ["Oh yeah. I almost forgot to say. Your office called and said you had to go back to work tomorrow."]
dialogueSequence[10] = ["Oh yeah. I almost forgot to say. Your office called and said you had to go back to work tomorrow."]

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