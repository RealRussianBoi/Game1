//@desc List of choosable bot enemies
//@arg ChooseEnemyAndSpawnEffect

function BotEnemies() {
	
	var EnemyOptions = choose(oEnemyDroneBig,oEnemyTickBig,oEnemyLungeSlugBig);
	with(instance_create_layer(x,y,"Enemies", EnemyOptions)) {
		
		if (BossChance != 75) {
				instance_change(object_get_parent(EnemyOptions),true);
		}
		
		with(instance_create_layer(x,y,"Instances", oEnemySpawnEffect)){
			image_xscale = other.size;
			image_yscale = other.size;
		}
		
	}
	
		
}