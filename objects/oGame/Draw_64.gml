/// @desc Draw Score

if (room != rMenu) and (instance_exists(oPlayer)) and (global.Coins > 0){

	cointextscale = max(cointextscale * 0.95, 1);
	DrawSetText(c_black, fMoney, fa_right, fa_top);
	//draw_text_transformed(RES_W-8,12,string(global.Coins) + " Gold", cointextscale, cointextscale,0);
	draw_set_colour(c_yellow);
	draw_text_transformed(RES_W-55,18,string(global.Coins), cointextscale, cointextscale,0);
	
	draw_sprite(sCoinGUI,0,RES_W-37,35);
	
}


