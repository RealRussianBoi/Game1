with (other) {
	hp--;
	hitfrom = other.direction;
	
	repeat(5){
		instance_create_layer(x,y,"Particles",oBlood);
	}
	
	repeat(100){
		instance_create_layer(x,y,"Particles",oEnemyElectroBotExplosion);
	}
	
}

instance_destroy();







