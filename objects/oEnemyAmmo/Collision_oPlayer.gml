 //the (other) basically involves the oEnemyTick it will hit to be affected by this code for the bullet. 
//In this case it doesn't affect ALL enemy ticks but only affects the ones we hit with bullets.
with (other) {
	hp--;
	hitfrom = other.direction;
	
	repeat(5){
		instance_create_layer(x,y,"Blood",oBlood);
	}
	
}

instance_destroy();









