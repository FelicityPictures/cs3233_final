event_inherited()

if(!global.inDialogue and !is_undefined(ds_map_find_value(itemInteraction, "default"))){
	instance_destroy()
}