name = "angel"

talked = false

if(global.afterlifeScore < 100){
	dialogueSequence[0] = ["Nice to see you again, Eve, or I guess Charlotte now. I'm here to bring you back to Hell."]
	dialogueSequence[1] = ["You see, this was a test. Nobody simply 'escapes' from the afterlife. Your soul has to be permitted to leave."]
	dialogueSequence[3] = ["This was a test to see if humans are capable of change and sadly, you have failed us. Back to Hell with you."]
}else{
	dialogueSequence[0] = ["Nice to see you again, Eve, or I guess Charlotte now. I'm here to bring you back to the afterlife. You see, this was a test."]
	dialogueSequence[1] = ["Nobody simply 'escapes' from the afterlife. Your soul was permitted to leave. We wanted to see if humans are capable of"]
	dialogueSequence[3] = ["change, to see if our decision to send humans to a certain afterlife for all eternity might be flawed. With your second chance,"]
	dialogueSequence[7] = ["you have shown us that we still have much work to do. But it's okay. You can finally rest. You have earned your place in Heaven."]
}