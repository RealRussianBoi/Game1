

if(image_index = 1){
	
	image_speed = 0;

	laserStop++;
	
	if(laserStop >= 100){
		instance_destroy(); 
		instance_destroy(oSteamWardenLaserEndings);
		instance_destroy(oSteamWardenLaserEndings2);
	}
	
	if(place_meeting(x,y,oPlayer)){
		with (oPlayer) {
	hp -= other.owner.Attack2Damage;
	hitfrom = other.direction;	
		repeat(5){
			instance_create_layer(x,y,"Particles",oBlood);
		}
}

instance_destroy();
instance_destroy(oSteamWardenLaserEndings2);
instance_destroy(oSteamWardenLaserEndings);
	}
}
