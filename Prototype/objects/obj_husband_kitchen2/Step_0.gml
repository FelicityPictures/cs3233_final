if(!global.inDialogue){
	if(x < 992){
		x += 5	
	}else if(y > 0){
		y -= 5	
	}
}

if(x >= 992 && y <= 0){
	instance_destroy()	
}