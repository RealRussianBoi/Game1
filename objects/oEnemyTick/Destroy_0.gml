//@desc Tick down spawners of they exist

if(instance_exists(oSpawner)){

	with(oSpawner){
		
		if(triggered){
			
			remaining[current_wave]--;	
			
		}
	}
}


