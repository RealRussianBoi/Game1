if(instance_exists(oPlayer) and (room != rMenu)){

	if(!instance_exists(pShootable)){
		WaveDelay--;
		if (WaveDelay == 0) WaveDelay = WaveDelayReset;
		WaveStart = true;
	}
	
	if(WaveStart == true){
		global.WaveNumber = global.WaveNumber + 1;
		var TileNum = instance_number(pFloor);
		
	}
	
}





