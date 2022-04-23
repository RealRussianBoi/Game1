if(instance_exists(oPlayer) and (room != rMenu)){
#region WaveStart == False
		
	if(WaveStart == false){		
		WaveDelay--;
		// I made the game restart once it hit wave 20!!!! LOOK HERE IF YOU ARE LOOKING FOR REASON OF THE GAME ENDING!!!
		if(global.WaveNumber = 20) game_restart();
		if (WaveDelay <= 0){
			WaveDelay = WaveDelayReset; 
			TileNum = instance_number(oDarkFloor);
			TileQuantity = max(0,TileNum);
			WaveStart = true;
			global.WaveNumber++;
			global.EnemyQuantity = 10 + global.WaveNumber;
		
	}
}

#endregion
#region WaveStart == True

	if(WaveStart == true){
			randomTile = irandom_range(1,TileNum);
			Floors = instance_find(oDarkFloor,randomTile);
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



