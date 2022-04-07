if(instance_exists(oPlayer) and (room != rMenu)){
#region WaveStart == False
		
	if(WaveStart == false){		
		WaveDelay--;
		if (WaveDelay <= 0){
			WaveDelay = WaveDelayReset; 
			TileNum = instance_number(pFloor);
			TileQuantity = max(0,TileNum);
			WaveStart = true;
			global.WaveNumber++;
			global.EnemyQuantity = 10 * global.WaveNumber;
		
	}
}

#endregion
#region WaveStart == True

	if(WaveStart == true){
			randomTile = irandom_range(1,TileNum);
			Floors = instance_find(pFloor,randomTile);
			
			if(global.EnemyQuantity <= 0) {
			if(!instance_exists(pShootable)){
				other.WaveStart = false;
				}
			}
			
			if(global.EnemyQuantity > 0) { 
			with(Floors){
				
				if(next_to_wall == true){
					randomTile = irandom_range(0,TileNum);
				} else if (next_to_wall == false){
					other.SpawnDelay--;
					if(other.SpawnDelay <= 0){
						if(global.EnemyQuantity > 0){
							global.EnemyQuantity--;
							other.SpawnDelay = other.SpawnDelayReset;
							BotEnemies();
							}
						}	
					}	
				}	
			}
		}
	}	

#endregion



