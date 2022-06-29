

if(image_index = 5){
	
	image_speed = 0;

	laserStop++;
	if(laserStop >= 30) instance_destroy();
	
	if(place_meeting(x,y,oPlayer)){
		with (oPlayer) {
	hp -= other.owner.Attack2Damage;
	hitfrom = other.direction;
	
	repeat(5){
		instance_create_layer(x,y,"Particles",oBlood);
	}
	
}

instance_destroy();
	}
}
