if(instance_exists(oPlayer) and (room != rMenu)){
#region WaveStart == False
		
	if(WaveStart == false){		
		WaveDelay--;
		// I made the game restart once it hit wave 20!!!! LOOK HERE IF YOU ARE LOOKING FOR REASON OF THE GAME ENDING!!!
		if(global.WaveNumber = 21) game_restart();
		if (WaveDelay <= 0){
			WaveDelay = WaveDelayReset; 
			TileNum = instance_number(oCementFloor);
			TileQuantity = max(0,TileNum);
			WaveStart = true;
			global.WaveNumber++;
			global.EnemyQuantity = 10 + global.WaveNumber;
			
			switch(global.WaveNumber) {
				
			case 6: BossWave = true;
			BossNum = 1;
			break;
			
			case 7: BossWave = false;
			break;
			
			case 12: BossWave = true;
			BossNum = 2;
			break
			
			case 13: BossWave = false;
			break;
			
			case 20: BossWave = true;
			BossNum = 3;
			}

	}
}

#endregion
#region WaveStart == True

	if(WaveStart == true){
			randomTile = irandom_range(1,TileNum);
			Floors = instance_find(oCementFloor,randomTile);
			if(global.EnemyQuantity <= 0) {
			if(!instance_exists(pShootable)){
				other.WaveStart = false;
				}
			}
			if(BossWave = false){
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
		} else {
		
		BotBossWaves();
		
		}
	}	







#endregion
}


