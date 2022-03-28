if(instance_exists(oPlayer)){
	var dirX = sign(oPlayer.x - x);
	var dirY = sign(oPlayer.y - y);
	hsp = dirX;
	vsp = dirY;
	if (stopmoving == false){
		hsp = dirX;
		vsp = dirY;
	} else {
		hsp = 0;
		vsp = 0;
	}
	
	
	if (place_meeting(x+hsp,y,pCollidable))
{
	hsp = 0;
} else hsp = dirX;


if (place_meeting(x, y + vsp, pCollidable)) {
    vsp = 0;
} else vsp = dirY;
	
	x += hsp * walksp;
	y += vsp * walksp;
}

//Animation (Character Mini Movements)

if (vsp != 0) {
   image_speed = 1;
    if (vsp == 0) {
        sprite_index = sEnemyTick;
    } else {
        sprite_index = sEnemyTickR;
    }
 
} else {
    image_speed = 1;
    if (hsp == 0) {
        sprite_index = sEnemyTick;
    } else {
        sprite_index = sEnemyTickR;
    }
}

if (hsp != 0) image_xscale = sign(hsp) * size;
image_yscale = size;

if (flash > 0)
{
 sprite_index = sEnemyTickWhiteRunning;
flash--;

instance_create_layer(x,y,"Particles",oMobDeath);
instance_create_layer(x,y,"Particles",oMobDeath2);


}








