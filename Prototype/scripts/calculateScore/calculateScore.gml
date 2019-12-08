score = 0

clothes = ds_map_find_value(global.choices, "clothingChoice")
clothesValue = 15
swipe = ds_map_find_value(global.choices, "swipe")
swipeValue = 10
father = ds_map_find_value(global.choices, "small client")
fatherValue = 75
dinner = ds_map_find_value(global.choices, "ordering dinner")
dinnerValue = 20
vacation = ds_map_find_value(global.choices, "vacation")
vacationValue = 30
jail = ds_map_find_value(global.choices, "big_choice")
jailValue = 150

if(!is_undefined(clothes)){
	if(clothes == 1){
		score -= clothesValue
	}else{
		score += clothesValue
	}
}
if(!is_undefined(swipe)){
	if(swipe == 1){
		score += swipeValue
	}else{
		score -= swipeValue
	}
}
if(!is_undefined(dinner)){
	if(dinner == 1){
		score += dinnerValue
	}else{
		score -= dinnerValue
	}
}
if(!is_undefined(vacation)){
	if(vacation == 1){
		score += vacationValue
	}else{
		score -= vacationValue
	}
}
if(!is_undefined(jail)){
	if(jail == 1){
		score += jailValue
		if(!is_undefined(father)){
			if(father == 1){
				score -= fatherValue
			}else{
				score += fatherValue
			}
		}
	}else{
		score -= jailValue
		if(!is_undefined(father)){
			if(father == 1){
				score -= fatherValue
			}else{
				score -= fatherValue*2
			}
		}
	}
}

global.afterlifeScore = score