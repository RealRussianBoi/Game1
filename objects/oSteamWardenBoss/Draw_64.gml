
if(window_get_fullscreen()){

draw_sprite_stretched(sSteamWardenHealthBar,0,healthbar_x,healthbar_y,healthbar_width,(hp/hp_max) * healthbar_height);
draw_sprite(sSteamWardenBarOutline,0,healthbar_x,healthbar_y);


} else {
	
draw_sprite_stretched(sSteamWardenHealthBar,0,healthbar_x,healthbar_y_small,healthbar_width,(hp/hp_max) * healthbar_height);
draw_sprite(sSteamWardenBarOutline,0,healthbar_x,healthbar_y_small);
	
}
