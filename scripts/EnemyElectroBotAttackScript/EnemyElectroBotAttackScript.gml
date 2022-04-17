function EnemyElectroBotAttackScript(){

	
		
		if(point_distance(oPlayer.x,oPlayer.y,x,y) >= 1){
		
		stopmoving = 0;
		sprite_index = sEnemyElectroBotCharge;
		instance_create_layer(x - (10 * sign(image_xscale)), bbox_top + 15, "Particles", oEnemyElectroBotCharge);
			
			if (id.image_index = 3) {
				
				stopmoving = 1;
				
				with (instance_create_layer(x - (10 * sign(image_xscale)), bbox_top + 10, "PistolBullets", oEnemyElectroBotEnergyBall)){
					
					owner = other.id;
					spd = 2 * other.size;
					direction = point_direction(x,y,oPlayer.x,oPlayer.y);
					
				}
				Attack = false;
				
			}
		}
}

