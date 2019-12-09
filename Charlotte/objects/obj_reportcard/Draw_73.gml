headersp1 = 105
headersp2 = headersp1 + 80
headersp3 = headersp2 + 210
headersp4 = headersp3 + 50
headerls1 = 25
headerls2 = 20

c1 = ds_map_find_value(global.choices, "clothingChoice")
c2 = ds_map_find_value(global.choices, "swipe")
c3 = ds_map_find_value(global.choices, "small client")
c4 = ds_map_find_value(global.choices, "ordering dinner")
c5 = ds_map_find_value(global.choices, "vacation")
c6 = ds_map_find_value(global.choices, "big_choice")

draw_set_font(font_baskerville)
draw_set_color(c_white)
draw_set_halign(fa_center)

draw_text_ext_transformed(x, y, "RESULTS", 0, 360, 3.25, 3.25, 0);

if pagenumber == 1 { // CLOTHES
	if c1 == 1 { // BAD
		draw_text_ext_transformed(x, y+headersp1, "You chose to wear gray clothes.", headerls1, 400, 2, 2, 0);
		draw_text_ext_transformed(x, y+headersp2, "The particular outfit that you chose just so happened to be from India, where the employees that make your clothes are constantly overworked, underpaid, and in dangerous working conditions, not to mention the impact this all has on the Earth...", headerls2, 480, 1.5, 1.5, 0);
		draw_set_color(c_red)
		draw_text_ext_transformed(x, y+headersp3, "(-" + string(global.clothesValue) + " points)", headerls2, 440, 1.75, 1.75, 0);
	} else { // GOOD
		draw_text_ext_transformed(x, y+headersp1, "You chose to wear black clothes.", headerls1, 400, 2, 2, 0);
		draw_text_ext_transformed(x, y+headersp2, "Black goes well with everything. Ethically sourced and made with reused materials, this outfit was a great choice.", headerls2, 480, 1.5, 1.5, 0);
		draw_text_ext_transformed(x, y+headersp3, "(+" + string(global.clothesValue) + " points)", headerls2, 440, 1.75, 1.75, 0);		
	}
} else if pagenumber == 2 { // SWIPE
	if c2 == 1 { // GOOD
		draw_text_ext_transformed(x, y+headersp1, "You didn't swipe someone in.", headerls1, 400, 2, 2, 0);
		draw_text_ext_transformed(x, y+headersp2, "It feels bad not to swipe someone in, especially if you have a monthly Metrocard. However, in the long run, this was a good choice. The MTA has been having money issues due to fare evaders, so props to you for not contributing to the problem.", headerls2, 480, 1.5, 1.5, 0);
		draw_text_ext_transformed(x, y+headersp3, "(+" + string(global.swipeValue) + " points)", headerls2, 440, 1.75, 1.75, 0);
	} else { // BAD
		draw_text_ext_transformed(x, y+headersp1, "You swiped someone in.", headerls1, 400, 2, 2, 0);
		draw_text_ext_transformed(x, y+headersp2, "While a good choice short term, the MTA has been struggling with money due to fare evaders and you are not helping the problem.", headerls2, 480, 1.5, 1.5, 0);
		draw_set_color(c_red)
		draw_text_ext_transformed(x, y+headersp3, "(-" + string(global.swipeValue) + " points)", headerls2, 440, 1.75, 1.75, 0);
	}
} else if pagenumber == 3 { // SMALL CLIENT
	if c3 == 1 { // NOT HELP
		draw_text_ext_transformed(x, y+headersp1, "You didn't help Dan win custody.", headerls1, 400, 2, 2, 0);
		draw_text_ext_transformed(x, y+headersp2, "What a cold-hearted woman.", headerls2, 480, 1.5, 1.5, 0);
		draw_set_color(c_red)
		draw_text_ext_transformed(x, y+headersp3, "(-" + string(global.fatherValue) + " points)", headerls2, 440, 1.75, 1.75, 0);
	} else { // HELP
		if c6 == 1 { // NO JAIL
			draw_text_ext_transformed(x, y+headersp1, "You agreed to help Dan win custody.", headerls1, 400, 2, 2, 0);
			draw_text_ext_transformed(x, y+headersp2, "With your help, Dan won the case! He got shared custody of his kids and he cannot thank you enough for what you've done.", headerls2, 480, 1.5, 1.5, 0);
			draw_text_ext_transformed(x, y+headersp3, "(+" + string(global.fatherValue) + " points)", headerls2, 440, 1.75, 1.75, 0);
		} else { // JAIL
			draw_text_ext_transformed(x, y+headersp1, "You agreed to help Dan win custody.", headerls1, 400, 2, 2, 0);
			draw_text_ext_transformed(x, y+headersp2, "He was counting on you. However, when you didn't show up to his court case due to you being in jail, he automatically lost. He didn't even get a fighting chance.", headerls2, 480, 1.5, 1.5, 0);
			draw_set_color(c_red)
			draw_text_ext_transformed(x, y+headersp3, "(-" + string(global.fatherValue) + " points)", headerls2, 440, 1.75, 1.75, 0);
		}
	}
} else if pagenumber == 4 { // DINNER
	if c4 == 1 { // BAD
		draw_text_ext_transformed(x, y+headersp1, "You picked fish and chips for dinner.", headerls1, 400, 2, 2, 0);
		draw_text_ext_transformed(x, y+headersp2, "Tasty choice! Unfortunately, as with almost all fish served at restaurants nowadays, you don't know where it came from. With it being such a popular restaurant, the only way they can offer such a delicious meal for such low prices is by getting their fish from some not so environmentally friendly fishermen. I hope the ocean will be okay.", headerls2, 480, 1.5, 1.5, 0);
		draw_set_color(c_red)
		draw_text_ext_transformed(x, y+headersp3, "(-" + string(global.dinnerValue) + " points)", headerls2, 440, 1.75, 1.75, 0);
	} else { // GOOD
		draw_text_ext_transformed(x, y+headersp1, "You had a chicken sandwich for dinner.", headerls1, 400, 2, 2, 0);
		draw_text_ext_transformed(x, y+headersp2, "Chicken sandwiches are always a hit or miss. It wasn't as tasty as fish and chips probably would have been but your body thanks you. Healthy choice #summerbody", headerls2, 480, 1.5, 1.5, 0);
		draw_text_ext_transformed(x, y+headersp3, "(+" + string(global.dinnerValue) + " points)", headerls2, 440, 1.75, 1.75, 0);
	}
} else if pagenumber == 5 { // VACATION
	if c5 == 1 { // GOOD
		draw_text_ext_transformed(x, y+headersp1, "You took the family to Niagara Falls.", headerls1, 400, 2, 2, 0);
		draw_text_ext_transformed(x, y+headersp2, "It was so hectic! Seven hours in a coach bus is the opposite of relaxing. At least the kids had fun.", headerls2, 480, 1.5, 1.5, 0);
		draw_text_ext_transformed(x, y+headersp3, "(+" + string(global.vacationValue) + " points)", headerls2, 440, 1.75, 1.75, 0);
	} else { // BAD
		draw_text_ext_transformed(x, y+headersp1, "You took the family to the Hamptons.", headerls1, 400, 2, 2, 0);
		draw_text_ext_transformed(x, y+headersp2, "Nothing like the Hamptons in the summer. I, too, enjoy living that lavish lifestyle. However, Mother Nature disagrees.", headerls2, 480, 1.5, 1.5, 0);
		draw_set_color(c_red)
		draw_text_ext_transformed(x, y+headersp3, "(-" + string(global.vacationValue) + " points)", headerls2, 440, 1.75, 1.75, 0);
	}
} else if pagenumber == 6 { // BIG CHOICE
	if c6 == 1 { // BAD -> STAY
		draw_text_ext_transformed(x, y+headersp1, "You won Kyle's case for him.", headerls1, 400, 2, 2, 0);
		draw_text_ext_transformed(x, y+headersp2, "Laying low and not rocking the boat, you opted to defend Kyle in court and you won. However, how does it feel knowing you kept a criminal out of jail?", headerls2, 480, 1.5, 1.5, 0);
		draw_set_color(c_red)
		draw_text_ext_transformed(x, y+headersp3, "(-" + string(global.jailValue) + " points)", headerls2, 440, 1.75, 1.75, 0);
	} else { // GOOD -> JAIL
		draw_text_ext_transformed(x, y+headersp1, "You told Kyle to find someone else.", headerls1, 400, 2, 2, 0);
		draw_text_ext_transformed(x, y+headersp2, "Trying to be a better person, you didn't defend Kyle in court. Before you can even say \"redemption,\" Kyle's father outed Charlotte's secret to the police. At least you didn't keep a criminal out of jail. I wonder where Kyle is now...", headerls2, 480, 1.5, 1.5, 0);
		draw_text_ext_transformed(x, y+headersp3, "(+" + string(global.jailValue) + " points)", headerls2, 440, 1.75, 1.75, 0);
	}
} else {
	draw_text_ext_transformed(x, y+headersp1, "Your final score was " + string(global.afterlifeScore) + ".", headerls1, 400, 2, 2, 0);
		draw_text_ext_transformed(x, y+headersp2, "If you ever want to see Heaven, you'll have to do much better than that. Sucks how hard it is to be good, huh?", headerls2, 480, 1.5, 1.5, 0);
		draw_set_color(c_red)
		draw_text_ext_transformed(x, y+headersp3, "You weren't good enough to escape Hell...", headerls2, 440, 1.75, 1.75, 0);
}

draw_set_color(c_white)
if pagenumber == 7 {
	draw_text(x, y+headersp4, "Press enter to play again")
} else {
	draw_text(x, y+headersp4, "Press enter to view next page")
}