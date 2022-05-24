/// @desc Draw Score

if (room != rMenu) and (instance_exists(oPlayer)) {

	cointextscale = max(cointextscale * 0.95, 1);
	draw_set_font(fMoney);
	//draw_text_transformed(RES_W-8,12,string(global.Coins) + " Gold", cointextscale, cointextscale,0);
	draw_text_transformed(RES_W-55, 53,string(global.Coins), cointextscale, cointextscale, 0);
	
	draw_sprite(sCoinGUI,0,RES_W-37, 30);
	
}


