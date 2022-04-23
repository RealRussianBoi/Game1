

switch (Attack){
	
	case false:
	
	#region Case False Start

if(instance_exists(oPlayer)) {//1
	
	var dirX = sign(oPlayer.x - x);
	var dirY = sign(oPlayer.y - y);
	var movement = (dirX + dirY);
	var dToPlayer = 300 * size;
	hsp = dirX * stopmoving;
	vsp = dirY * stopmoving;

	x += hsp * walksp;
	y += vsp * walksp;

	
	}//1 
	else {
		dirX = 0;
		dirY = 0;
		movement = 0;
		dToPlayer = 0;
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

if (movement != 0) {
 
   image_speed = 1;
    if (movement == 0) {
        sprite_index = sEnemyElectroBot;
    } else {
        sprite_index = sEnemyElectroBotR;
    }
}

if (hsp != 0) image_xscale = sign(hsp) * size;
image_yscale = size;

if (flash > 0) and (movement = 0)
{
 sprite_index = sEnemyElectroBotFlash;
flash--;

instance_create_layer(x,y,"Particles",oMobDeath);
instance_create_layer(x,y,"Particles",oMobDeath2);

} else if (flash != 0) and (movement != 0) {

sprite_index = sEnemyElectroBotRFlash;
flash--;

instance_create_layer(x,y,"Particles",oMobDeath);
instance_create_layer(x,y,"Particles",oMobDeath2);
	
}


if(distance_to_object(oPlayer) < dToPlayer){
	Attack = true;	
}

#endregion Case False End
	
	break;

	case true:
	
	EnemyElectroBotAttackScript();
	
	break;
}




