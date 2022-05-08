image_yscale = irandom_range(0.9,1.1);

if(image_index = 5){
	image_speed = 0;
	if(place_meeting(x,y,oPlayer)){
		with (oPlayer) {
	hp -= owner.Attack2Damage;
	hitfrom = other.direction;
	
	repeat(5){
		instance_create_layer(x,y,"Particles",oBlood);
	}
	
}

instance_destroy();
	}
}
