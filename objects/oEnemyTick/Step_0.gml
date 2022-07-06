if(instance_exists(oPlayer)) {//1


	var dirX = sign(oPlayer.x - x);
	var dirY = sign(oPlayer.y - y);
	var movement = ((dirX * 5) + (dirY*3));
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
        sprite_index = sEnemyTick;
    } else {
        sprite_index = sEnemyTickR;
    }
}

//Character flipping left and right

if (hsp != 0){
	image_xscale = sign(hsp) * size;
}

image_yscale = size;

//Animation (Character Mini Movements)

if ((flash > 0) and (movement != 0)) {
 sprite_index = sEnemyTickWhiteRunning;
flash--;

instance_create_layer(x,y,"Particles",oMobDeath);
instance_create_layer(x,y,"Particles",oMobDeath2);

} else if ((flash > 0 ) and (movement = 0)) {
	
	sprite_index = sEnemyTickWhiteRunningStill;
	flash--;
	
} 

if (flash = 0){

	if (movement = 0){
		sprite_index = sEnemyTick;
	} else {
		sprite_index = sEnemyTickR;	
	}
	
}












