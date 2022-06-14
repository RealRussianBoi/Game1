function BotBossWaves(){
	
	var EnemyOptions = choose(oEnemyDroneBig,oEnemyTickBig,oEnemyLungeSlugBig,oEnemyElectroBotBig);
	
#region Ground Enemies
	
	if(object_get_parent(object_get_parent(EnemyOptions)) = pShootable){
		
		with(instance_create_layer(x,y,"Enemies", EnemyOptions)) {
		
		with(instance_create_layer(x,y,"Instances", oEnemySpawnEffect)){
			image_xscale = other.size;
			image_yscale = other.size;
			}
		}
	}
	
#endregion Ground Enemies

#region Airborne Enemies
	if(object_get_parent(object_get_parent(EnemyOptions)) = pShootableAirborne){
		
		with(instance_create_layer(x,y,"AirborneEnemies", EnemyOptions)) {
		
		with(instance_create_layer(x,y,"Instances", oEnemySpawnEffect)){
			image_xscale = other.size;
			image_yscale = other.size;
			}
		}	
	}
	
#endregion Airborne Enemies	

}










