/// @desc Attacks
if(instance_exists(oPlayer)){
	
if(hp > (hp_max / 2)){
	
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
			
			with(instance_create_layer(x + choose(20, -20),y,"PistolBullets",oSteamWardenBullet)){
				
				other.BurstCount--;
				owner = other.id;
				image_xscale = 5;
				image_yscale = 5;
				image_angle = point_direction(x,y,oPlayer.x,oPlayer.y);
				Attack1Damage = other.Attack1Damage
				spd = 20 * other.size;
				direction = point_direction(x,y,oPlayer.x,oPlayer.y);
						
			}
			
		}
	}
	
	
}
	
	
} else {

PhaseCooldown2--;

if(PhaseCooldown2 <= 0){
	
	sprite_index = sSteamWardenA2;
	image_speed = 1;
	if(image_index = 8){
		
		image_speed = 0;
		AttackCooldown--;
		
		if(AttackCooldown <=0){
			
			if(BurstCount2 = 0){
				PhaseCooldown2 = PhaseCooldown2Reset;
				image_speed = -1;
				if(image_index = 0) sprite_index = sSteamWarden;
				BurstCount2 = BurstCount2Reset;
				WeaponSwitch = 1;
			}
			
			AttackCooldown = AttackCooldownReset;
			
			with(instance_create_layer(x + choose(40, -40),y,"PistolBullets",oSteamWardenLaser)){
				
				other.BurstCount2--;
				owner = other.id;
			
					}
				}
			}	
		}
	}
}