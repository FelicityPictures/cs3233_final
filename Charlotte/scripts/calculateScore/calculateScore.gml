score = 0

clothes = ds_map_find_value(global.choices, "clothingChoice")
global.clothesValue = 15
swipe = ds_map_find_value(global.choices, "swipe")
global.swipeValue = 10
father = ds_map_find_value(global.choices, "small client")
global.fatherValue = 75
dinner = ds_map_find_value(global.choices, "ordering dinner")
global.dinnerValue = 20
vacation = ds_map_find_value(global.choices, "vacation")
global.vacationValue = 30
jail = ds_map_find_value(global.choices, "big_choice")
global.jailValue = 150

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
if(!is_undefined(jail)){
	if(jail == 1){
		score += global.jailValue
		if(!is_undefined(father)){
			if(father == 1){
				score -= global.fatherValue
			}else{
				score += global.fatherValue
			}
		}
	}else{
		score -= global.jailValue
		if(!is_undefined(father)){
			if(father == 1){
				score -= global.fatherValue
			}else{
				score -= global.fatherValue*2
			}
		}
	}
}

global.afterlifeScore = score