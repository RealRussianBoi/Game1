if(instance_exists(oPlayer)) {//1


	var dirX = sign(oPlayer.x - x);
	var dirY = sign(oPlayer.y - y);
	var movement = (dirX + dirY);
	hsp = dirX * stopmoving;
	vsp = dirY * stopmoving;

	x += hsp * walksp;
	y += vsp * walksp;

	}//1 
	else {
		dirX = 0;
		dirY = 0;
		movement = 0;
}
	
	if (place_meeting(x+hsp,y,pCollidable)) {
	hsp = 0;
} else {
	hsp = dirX;
}

if (place_meeting(x, y + vsp, pCollidable)) {
    vsp = 0;
} else {
	vsp = dirY;
}

if (movement != 0) {
 
   image_speed = 1;
    if (movement == 0) {
        sprite_index = STATIONARY_ENEMY_SPRITE;
    } else {
        sprite_index = ANIMATED_ENEMY_SPRITE;
    }
}

//Character flipping left and right

if (hsp != 0){
	image_xscale = sign(hsp) * size;
} else {
	image_xscale = 1 * size;	
}
image_yscale = size;

//Animation (Character Mini Movements)

if (flash > 0)
{
 sprite_index = ENEMY_FLASH_SPRITE_HERE;
flash--;

instance_create_layer(x,y,"Particles",oMobDeath);
instance_create_layer(x,y,"Particles",oMobDeath2);

}



