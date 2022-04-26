if (instance_exists(pDarkWalls2)){
		if(global.WaveNumber > 5){
			image_alpha = 1;
		}
		
		if(global.WaveNumber > 11){
			instance_destroy(pDarkWalls2);
		}
	}
