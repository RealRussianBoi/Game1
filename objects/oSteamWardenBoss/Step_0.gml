/// @desc Attacks
if(instance_exists(oPlayer)){
	
if(hp > ((hp / 100) * 50)){
	
PhaseCooldown--;

//Attack 1
if(PhaseCooldown <= 0){
	
	sprite_index = sSteamWardenA1;
	if(image_index = 9){
		
		image_speed = 0;
		AttackCooldown--;
		
		if(AttackCooldown <=0){
			
			if(BurstCount = 0){
				PhaseCooldown = PhaseCooldownReset;
				image_index--;
				if(image_index = 0) sprite_index = sSteamWarden;
				BurstCount = BurstCountReset;
			}
			
			AttackCooldown = AttackCooldownReset;
			
			with(instance_create_layer(x + choose(20, -20),y,"Bullets",oSteamWardenBullet)){
				
				other.BurstCount--;
				owner = other.id;
				spd = 15 * other.size;
				direction = point_direction(x,y,oPlayer.x,oPlayer.y);
						
			}
			
		}
	}
	
	
}
	
	
} else {
	
	
	
	//Attack 2
	switch(WeaponSwitch){
		
		case 1:
		
PhaseCooldown--;

//Attack 1
if(PhaseCooldown <= 0){
	
	sprite_index = sSteamWardenA1;
	if(image_index = 9){
		
		image_speed = 0;
		AttackCooldown--;
		
		if(AttackCooldown <= 0){
			
			if(BurstCount = 0){
				PhaseCooldown = PhaseCooldownReset;
				image_speed = -1;
				if(image_index = 0) sprite_index = sSteamWarden;
				BurstCount = BurstCountReset;
				WeaponSwitch = 2;
			}
			
			AttackCooldown = AttackCooldownReset;
			
			with(instance_create_layer(x + choose(20, -20),y,"PistolBullets",oSteamWardenBullet)){
				
				other.BurstCount--;
				owner = other.id;
				spd = 15 * other.size;
				direction = point_direction(x,y,oPlayer.x,oPlayer.y);
						
			}
			
		}
	}
}

break;
		
case 2:

PhaseCooldown2--;

if(PhaseCooldown2 <= 0){
	
	sprite_index = sSteamWardenA2;
	if(image_index = 8){
		
		image_speed = 0;
		AttackCooldown--;
		
		if(AttackCooldown <=0){
			
			if(BurstCount2 = 0){
				PhaseCooldown2 = PhaseCooldown2Reset;
				image_index--;
				if(image_index = 0) sprite_index = sSteamWarden;
				BurstCount2 = BurstCount2Reset;
				WeaponSwitch = 1;
			}
			
			AttackCooldown = AttackCooldownReset;
			
			with(instance_create_layer(x + choose(20, -20),y,"Bullets",oSteamWardenLaser)){
				
				other.BurstCount2--;
				owner = other.id;

						
			}
		}
	}	
}

		break;





			}
		}
	}
