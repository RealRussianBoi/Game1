if(instance_exists(oPlayer)) {//1

	if(distance_to_object(oPlayer) <= 200) LeapToPlayer = true;
	var dirX = sign(oPlayer.x - x);
	var dirY = sign(oPlayer.y - y);
	hsp = dirX * stopmoving;
	vsp = dirY * stopmoving;
	var movement = (hsp + vsp);
	
	if(LeapToPlayer == false){
		x += hsp * walksp;
		y += vsp * walksp;
	} else {
		
		EnemyLungeSlugAttackScript();
		
		
	}
	
	
	
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

if(LeapToPlayer == false){
	
if (movement != 0) {

   image_speed = 1;
    if (movement == 0) {
        sprite_index = sEnemyLungeSlug;
    } else {
        sprite_index = sEnemyLungeSlugR;
    }
}

//Character flipping left and right

if (hsp != 0){
	image_xscale = sign(hsp) * size;
}

image_yscale = size;

//Animation (Character Mini Movements)

#region Flash

if(image_index != sEnemyLungeSlugCoiled){
	
	if ((flash > 0) and (movement != 0)) {
	sprite_index = sEnemyLungeSlugFlashStill;
	flash--;

	instance_create_layer(x,y,"Particles",oMobDeath);
	instance_create_layer(x,y,"Particles",oMobDeath2);

	} else if ((flash > 0 ) and (movement == 0)) {
	
		sprite_index = sEnemyLungeSlugRFlash;
		flash--;
	
		instance_create_layer(x,y,"Particles",oMobDeath);
		instance_create_layer(x,y,"Particles",oMobDeath2);
	
	}
}
instance_create_layer(x - (30 * hsp),y,"FloorParticles", oBotSlugSlime);

#endregion flash

}




