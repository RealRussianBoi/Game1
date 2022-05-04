
function EnemyLungeSlugAttackScript(){

if (flash > 0) {
flash--;

instance_create_layer(x,y,"Particles",oMobDeath);
instance_create_layer(x,y,"Particles",oMobDeath2);

}

	sprite_index = sEnemyLungeSlugCoiled;

	chargeup--;
	if(chargeup <= 0){


		while(canattack = true){
			PlayerLocationX = oPlayer.x;
			PlayerLocationY = oPlayer.y;
			TravelX = sign(PlayerLocationX - x);
			TravelY = sign(PlayerLocationY - y);
			canattack = false;
		}
		
		if(distance_to_point(PlayerLocationX,PlayerLocationY) != 0){
			
			image_xscale = (sign(oPlayer.x - x)) * size;
			sprite_index = sEnemyLungeSlugLunge;
			direction = point_direction(x,y,PlayerLocationX,PlayerLocationY);
			x += lengthdir_x(walksp * 2,direction);
			y += lengthdir_y(walksp * 2,direction);
			
		} else {
				
				with(id) {
				sprite_index = sEnemyLungeSlugAttack;
				if(image_index = 1){
					damage += 1;
					with(instance_create_layer(x + (64 * sign(image_xscale)),y,"Particles", oAttackCube)){
						image_angle = point_direction(x,y,oPlayer.x,oPlayer.y);
						damage = other.damage;
					}
					repeat(10){
						with(instance_create_layer(x + (64 * sign(image_xscale)),y,"Particles", oBotSlugAttackParticles)){
							
							faceDir = image_xscale;
							
						}
					}
					damage = damagereset;
					chargeup = chargeupReset;
					canattack = true;
					LeapToPlayer = false;
			
				}	
		} 
			
			
			}
		}
				
	}
	
