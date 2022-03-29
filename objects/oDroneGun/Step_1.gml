if(BurstCount >= 4) WillShoot = false;
if(WillShoot = false) WillShootReset++;
if (WillShootReset >= 180){
	WillShoot = true;
	WillShootReset = 0;
	BurstCount = 0;
}
x = owner.x;
y = owner.y + 15;

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if(instance_exists(oPlayer)){
	
	//Code below makes the drone stop from coming too close to player
	if(point_distance(oPlayer.x,oPlayer.y,x,y) < 500){
		owner.stopmoving = 0;
	} else {
		owner.stopmoving = 1;	
	}
	
	if(oPlayer.x < x) image_yscale = -image_yscale;
	if(point_distance(oPlayer.x,oPlayer.y,x,y) < 600){

		image_angle = point_direction(x,y,oPlayer.x,oPlayer.y)
		countdown--;	
			
			if(countdown <= 0) and (WillShoot == true){
				countdown = countdownrate;
				

					with (instance_create_layer(x,y, "PistolBullets", oEnemyAmmo)){
							spd = 5; 
							direction = other.image_angle + random_range(-2,2);
							image_angle = direction;
							other.BurstCount++;

					}
	
				}
				
			
		}
	
	
	
}
	









