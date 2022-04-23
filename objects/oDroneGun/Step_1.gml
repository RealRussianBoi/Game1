if(BurstCount >= 4) WillShoot = false;
if(WillShoot = false) WillShootReset++;
if (WillShootReset >= 180){
	WillShoot = true;
	WillShootReset = 0;
	BurstCount = 0;
}
if(instance_exists(owner)){
x = owner.x;
y = owner.y + 15;
} else instance_destroy();

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if(instance_exists(oPlayer)){
	
	if(oPlayer.x < x) image_yscale = -image_yscale;
	if(point_distance(oPlayer.x,oPlayer.y,x,y) < 400){

		image_angle = point_direction(x,y,oPlayer.x,oPlayer.y)
		countdown--;	
			
			if(countdown <= 0) and (WillShoot == true){
				countdown = countdownrate;
				

					with (instance_create_layer(x,y, "PistolBullets", oEnemyAmmo)){
							spd = 5 * abs(other.image_xscale); 
							direction = other.image_angle + random_range(-2,2);
							image_angle = direction;
							owner = other.owner;
							other.BurstCount++;
							image_xscale = other.image_xscale;
							image_yscale = other.image_yscale;
							
					}
	
				}
				
			
		}
	
	
	
}
	









