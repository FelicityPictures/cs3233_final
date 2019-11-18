narrationArray = argument[0]
text = narrationArray[0]
second = ""
if(array_length_1d(narrationArray) > 1){
	second = narrationArray[1]
	xPadding = 20
}else{
	xPadding = 0	
}
choice = argument[1]

lineHeight = 45
margin = 20
padding = 20
boxHeight = (2*lineHeight)+(2*padding)
outlineWeight = 5

// draw dialogue box
draw_set_color(c_white)
draw_rectangle(margin, room_height-margin-boxHeight-(2*outlineWeight), room_width-margin, room_height-margin, false)
draw_set_color(c_black)
drawRectangleOutlineOfWeight(margin, room_height-margin-boxHeight-(2*outlineWeight), room_width-margin, room_height-margin, outlineWeight)

draw_set_halign(fa_left)
draw_text_ext_transformed(margin+padding+xPadding+outlineWeight, room_height-margin-outlineWeight-boxHeight+padding, string(text), 25, (room_width-(2*(margin+outlineWeight+padding)))/2, 2, 2, 0)
draw_text_ext_transformed(margin+padding+xPadding+outlineWeight, room_height-margin-outlineWeight-boxHeight+padding+50, string(second), 25, (room_width-(2*(margin+outlineWeight+padding)))/2, 2, 2, 0)


// draw choice pointer
if(array_length_1d(narrationArray) > 1){
	draw_set_color(c_black)
	draw_triangle(margin+padding+outlineWeight, room_height-margin-outlineWeight-boxHeight-padding+ (50*choice),
		margin+padding+outlineWeight, room_height-margin-outlineWeight-boxHeight-padding+25+ (50*choice),
		margin+padding+outlineWeight+12, room_height-margin-outlineWeight-boxHeight-padding+12+ (50*choice), false)
}