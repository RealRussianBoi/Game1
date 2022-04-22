x += lengthdir_x(spd,direction);
y += lengthdir_y(spd,direction);

if (place_meeting (x, y, pCollidable)){
	
	while(place_meeting(x,y,pCollidable)){
		
		x -= lengthdir_x(1,direction);
		y -= lengthdir_y(1,direction);
		
	}

	repeat(100){
		instance_create_layer(x,y,"Particles",oEnemyElectroBotExplosion);
	}
	instance_create_layer(x,y,"Particles",oElectroBotBallExplosion);
	
	instance_change(oEnemyBCollision,true);
	
}

