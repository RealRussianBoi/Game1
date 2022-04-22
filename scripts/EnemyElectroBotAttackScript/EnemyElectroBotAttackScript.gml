function EnemyElectroBotAttackScript(){


	sprite_index = sEnemyElectroBotCharge;
	image_speed = 1;
	instance_create_layer(x - (10 * sign(image_xscale)), bbox_top + 15, "Particles", oEnemyElectroBotCharge);
			
		if (image_index = 3) {
				
			with (instance_create_layer(x - (10 * sign(image_xscale)), bbox_top + 10, "PistolBullets", oEnemyElectroBotEnergyBall)){
				
				owner = other.id;
				spd = 2 * other.size;
				direction = point_direction(x,y,oPlayer.x,oPlayer.y);
				other.Attack = false;
				
			}
		
	}
}

