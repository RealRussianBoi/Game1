if (hp <= 0) {
	
	
	
	if (global.CoinChance = 1){
	with(instance_create_layer(x,y,"Coins",oCoin)){
	CoinSize = other.size;
	Value = CoinSize;
	if (CoinSize >= 2) Value = Value * CoinSize;
		} 
	}
	with (instance_create_layer(x,y,layer,oEnemyTickD)){
		direction = other.hitfrom;
		hsp = lengthdir_x(3, direction);
		vsp = lengthdir_y(3, direction) -2;
		if (sign(hsp) != 0) image_xscale = sign(hsp) * other.size;
		image_yscale = other.size;
	
		
	} 
	
	instance_create_layer(x,y,"Particles",oMobDeath);
	instance_create_layer(x,y,"Particles",oMobDeath2);
	instance_destroy();

}

