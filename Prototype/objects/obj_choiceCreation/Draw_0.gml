if(choiceNumber == 1){
	draw_set_color(c_red)
}else if(choiceNumber == 2){
	draw_set_color(c_yellow)
}else{
	draw_set_color(c_lime)
}
draw_rectangle(x, y, x+50, y+50, false)
draw_set_halign(fa_left)
draw_set_color(c_white)
draw_text(x, y, interaction)