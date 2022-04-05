if(instance_exists(oPlayer) and (room != rMenu)){
#region WaveStart == False

	if(WaveStart == false){
		WaveDelay--;
		if (WaveDelay <= 0){
			WaveDelay = WaveDelayReset; 
			WaveStart = true;
			global.WaveNumber += 1;
		
		TileNum = instance_number(pFloor);
		TileQuantity = max(0,TileNum);
	}
}

#endregion
#region WaveStart == True

	if(WaveStart == true){
			randomTile = irandom_range(0,TileNum);
			Floors = instance_find(pFloor,randomTile);
			EnemyQuantity = 10 * global.WaveNumber;
			
			with(Floors){
				
				if(next_to_wall == true){
					randomTile = irandom_range(0,TileNum);
				} else if (next_to_wall == false){
					other.SpawnDelay--;
					if(other.SpawnDelay <= 0){
						if(other.EnemyQuantity > 0){
							other.EnemyQuantity--;
							other.SpawnDelay = other.SpawnDelayReset;
							BotEnemies();
						} else { 
							other.WaveStart = false;	
						}
						
					}
					
				}
				
			}
		}
	}	

#endregion



