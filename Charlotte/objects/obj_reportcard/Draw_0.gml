headersp1 = 105
headersp2 = headersp1 + 65
headersp3 = headersp2 + 100
headerls1 = 25
headerls2 = 20
playerscore = calculateScore()
choice1 = "gray"

draw_set_font(font_baskerville)
draw_set_color(c_white)
draw_set_halign(fa_center)

draw_text_ext_transformed(x, y, "RESULTS", 0, 360, 3.25, 3.25, 0);
draw_text_ext_transformed(x, y+headersp1, "You chose to wear " + choice1 + " clothes.", headerls1, 400, 2, 2, 0);
draw_text_ext_transformed(x, y+headersp2, "The particular outfit that you chose just so happened to be from India, where the employees that make your clothes are constantly overworked, underpaid, and in dangerous working conditions, not to mention the impact this all has on the Earth...", headerls2, 480, 1.5, 1.5, 0);

draw_set_color(c_red)
draw_text_ext_transformed(x, y+headersp3, "(-" + global.clothesValue + " points)", headerls2, 440, 1.75, 1.75, 0);
