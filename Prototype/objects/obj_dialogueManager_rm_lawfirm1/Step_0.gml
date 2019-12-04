event_inherited()

if(!global.inDialogue){
	if(!is_undefined(ds_map_find_value(itemInteraction, "client_father")) && 
		instance_find(obj_client_father, 0) == noone){
		room_goto_next()
	}
}