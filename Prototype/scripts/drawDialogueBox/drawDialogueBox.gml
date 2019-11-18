text = argument[0]

lineHeight = 45
margin = 20
padding = 20
boxHeight = (2*lineHeight)+(2*padding)
outlineWeight = 5

draw_set_color(c_white)
draw_rectangle(margin, room_height-margin-boxHeight-(2*outlineWeight), room_width-margin, room_height-margin, false)
draw_set_color(c_black)
drawRectangleOutlineOfWeight(margin, room_height-margin-boxHeight-(2*outlineWeight), room_width-margin, room_height-margin, outlineWeight)

draw_set_halign(fa_left)
// draw_text_transformed(margin+padding+outlineWeight, room_height-margin-outlineWeight-boxHeight+padding, string(text), 2, 2, 0)
// draw_text_transformed(margin+padding+outlineWeight, room_height-margin-outlineWeight-boxHeight+padding+lineHeight, string(text), 2, 2, 0)
draw_text_ext_transformed(margin+padding+outlineWeight, room_height-margin-outlineWeight-boxHeight+padding, string(text), 25, (room_width-(2*(margin+outlineWeight+padding)))/2, 2, 2, 0)