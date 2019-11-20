event_inherited()

if(!global.inDialogue){
	if(!is_undefined(ds_map_find_value(itemInteraction, "husband"))){
		room_goto(rm_playAgain)
	}
}