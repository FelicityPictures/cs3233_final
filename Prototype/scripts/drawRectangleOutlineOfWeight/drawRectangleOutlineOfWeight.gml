x1 = argument[0]
y1 = argument[1]
x2 = argument[2]
y2 = argument[3]
weight = argument[4]

for(i = 0; i < weight; i++){
	draw_set_color(c_black)
	draw_rectangle(x1+i, y1+i, x2-i, y2-i, true)
}