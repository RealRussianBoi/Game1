if (hp <= 0) {

	instance_create_layer(x,y,"Coins",oCoin);
	with(oCoin){
	CoinSize = other.size;
	}
	with (instance_create_layer(x,y,layer,oEnemyDroneD)){
		direction = other.hitfrom;
		hsp = lengthdir_x(3, direction);
		vsp = lengthdir_y(3, direction) -2;
		if (sign(hsp) != 0) image_xscale = sign(hsp) * other.size;
		image_yscale = other.size;
	
		
	} 
	
	instance_destroy(DroneGun);
	instance_destroy();




}