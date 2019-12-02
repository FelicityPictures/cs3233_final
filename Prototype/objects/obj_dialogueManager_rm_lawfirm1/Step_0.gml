event_inherited()

if(!global.inDialogue){
	if(!is_undefined(ds_map_find_value(itemInteraction, "client_father"))){
		room_goto_next()
	}
}