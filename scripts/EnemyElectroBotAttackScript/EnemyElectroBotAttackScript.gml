function EnemyElectroBotAttackScript(){


	sprite_index = sEnemyElectroBotCharge;
	image_speed = 1;
	instance_create_layer(x - (10 * sign(image_xscale)), bbox_top + 15, "Particles", oEnemyElectroBotCharge);
			
		if (image_index = 3) {
			
			if(instance_exists(oPlayer)){	
				
			with (instance_create_layer(x - (10 * sign(image_xscale)), bbox_top + 10, "PistolBullets", oEnemyElectroBotEnergyBall)){
				
				image_xscale = other.image_xscale;
				image_yscale = other.image_yscale;
				owner = other.id;
				spd = 2 * other.size;
				direction = point_direction(x,y,oPlayer.x,oPlayer.y);
				other.Attack = false;
				
			}
		} else {
			Attack = false;	
		}
	}
}

