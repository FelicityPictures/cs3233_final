score = 0

clothes = ds_map_find_value(global.choices, "clothingChoice")
swipe = ds_map_find_value(global.choices, "swipe")
father = ds_map_find_value(global.choices, "small client")
dinner = ds_map_find_value(global.choices, "ordering dinner")
vacation = ds_map_find_value(global.choices, "vacation")
jail = ds_map_find_value(global.choices, "big_choice")

if(!is_undefined(clothes)){
	if(clothes == 1){
		score -= global.clothesValue
	}else{
		score += global.clothesValue
	}
}
if(!is_undefined(swipe)){
	if(swipe == 1){
		score += global.swipeValue
	}else{
		score -= global.swipeValue
	}
}
if(!is_undefined(dinner)){
	if(dinner == 1){
		score += global.dinnerValue
	}else{
		score -= global.dinnerValue
	}
}
if(!is_undefined(vacation)){
	if(vacation == 1){
		score += global.vacationValue
	}else{
		score -= global.vacationValue
	}
}
if(!is_undefined(father)){
	if(father == 1){
		score -= global.fatherValue
	}else{
		score += global.fatherValue
	}
}
if(!is_undefined(jail)){
	if(jail == 1){
		score -= global.jailValue
	}else{
		score += global.jailValue
	}
}

global.afterlifeScore = score