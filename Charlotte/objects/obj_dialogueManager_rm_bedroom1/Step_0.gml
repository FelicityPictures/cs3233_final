 event_inherited()

if(!global.inDialogue){
	if(
	!is_undefined(ds_map_find_value(itemInteraction, "wardrobe")) and
	!is_undefined(ds_map_find_value(itemInteraction, "mirror")) and
	!is_undefined(ds_map_find_value(itemInteraction, "frame")) and
	!is_undefined(ds_map_find_value(itemInteraction, "wallet")) and
	!is_undefined(ds_map_find_value(itemInteraction, "window"))){

		ds_map_clear(itemInteraction)
		instance_create_depth(288, 96, -100, obj_husband_bedroomTrigger)
	}if(!is_undefined(ds_map_find_value(itemInteraction, "husband"))){
		room_goto_next()
	}
}