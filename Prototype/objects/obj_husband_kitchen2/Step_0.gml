if(!global.inDialogue){
	if(x < 944){
		x += 5	
	}else if(y > 0){
		y -= 5	
	}
}

if(x >= 944 && y <= 0){
	instance_destroy()	
}