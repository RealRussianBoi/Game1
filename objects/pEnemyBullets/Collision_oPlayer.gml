with (other) {
	hp--;
	hitfrom = other.direction;
	
	repeat(5){
		instance_create_layer(x,y,"Particles",oBlood);
	}
	
}

instance_destroy();
