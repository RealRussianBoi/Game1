if(instance_exists(oPlayer) and (hp > 0)) {//1
	var dirX = sign(oPlayer.x - x);
	var dirY = sign(oPlayer.y - y);
	var dToPlayer = min(300,(300 * (size * 1.1)));
	hsp = dirX * stopmoving;
	vsp = dirY * stopmoving;

	if(distance_to_object(oPlayer) < dToPlayer){
		stopmoving = 0;
	} else {
		stopmoving = 1;	
	}

	x += hsp * walksp;
	y += vsp * walksp;

	}//1 
	else {
		dirX = 0;
		dirY = 0;
}
	
	if (place_meeting(x+hsp,y,pCollidable))
{
	hsp = 0;
} else {
	hsp = dirX;
}

if (place_meeting(x, y + vsp, pCollidable)) {
    vsp = 0;
} else {
	vsp = dirY;
}

//Animation (Character Mini Movements)

if (vsp != 0) {
   image_speed = 1;
    if (vsp == 0) {
        sprite_index = sEnemyDrone;
    } else {
        sprite_index = sEnemyDroneR;
    }
 
} else {
    image_speed = 1;
    if (hsp == 0) {
        sprite_index = sEnemyDrone;
    } else {
        sprite_index = sEnemyDroneR;
    }
}

if (hsp != 0) image_xscale = sign(hsp) * size;
image_yscale = size;

if (flash > 0)
{
 sprite_index = sEnemyDroneFlash;
flash--;

instance_create_layer(x,y,"Particles",oMobDeath);
instance_create_layer(x,y,"Particles",oMobDeath2);


}








