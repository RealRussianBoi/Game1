//@desc List of choosable bot enemies
//@arg ChooseEnemyAndSpawnEffect

function BotEnemies() {
	
	
	var EnemyOptions = choose(oEnemyDrone,oEnemyTick,oEnemyTickBig);
	with(instance_create_layer(x,y,"Enemies", EnemyOptions)) {
		
		with(instance_create_layer(x,y,"Instances", oEnemySpawnEffect)){
			image_xscale = other.size;
			image_yscale = other.size;
		}
		
	}
	
	if(global.EnemyQuantity <= 0) {
		other.WaveStart = false;	
	}
	
}