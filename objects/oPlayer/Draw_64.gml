/// @desc Health Bar
if(window_get_fullscreen()){
with (oPlayer){
draw_sprite(sHealthBarBackround,0,healthbar_x,healthbar_y);
draw_sprite_stretched(sHealthBar,0,healthbar_x,healthbar_y,(hp/hp_max) * healthbar_width, healthbar_height);
draw_sprite(sHealthBarOutline,0,healthbar_x,healthbar_y);

	}
} else {
	with (oPlayer){
draw_sprite(sHealthBarBackround,0,healthbar_x,healthbar_y_small);
draw_sprite_stretched(sHealthBar,0,healthbar_x,healthbar_y_small,(hp/hp_max) * healthbar_width, healthbar_height);
draw_sprite(sHealthBarOutline,0,healthbar_x,healthbar_y_small);
	}
}