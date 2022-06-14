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
			if(global.WaveNumber != 6 or 12 or 20){
				global.EnemyQuantity = BaseEnemyNum + global.WaveNumber;
			}
			
			switch(global.WaveNumber) {
				
			case 6: global.BossWave = true;
			BaseEnemyNum = 6;
			global.EnemyQuantity = BaseEnemyNum
			break;
			
			case 7: global.BossWave = false;
			BaseEnemyNum = 10;
			break;
			
			case 12: global.BossWave = true;
			BaseEnemyNum = 12;
			global.EnemyQuantity = BaseEnemyNum;
			break
			
			case 13: global.BossWave = false;
			BaseEnemyNum = 10;
			break;
			
			case 20: BossWaveSpecial = true;
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
			if(!instance_exists(pShootable) and (!instance_exists(pShootableAirborne))){
				other.WaveStart = false;
				}
			}
			if(BossWaveSpecial = false){
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
							if(global.BossWave = false){
								BotEnemies();
							} else {
								BotBossWaves();
							}
							}
						}	
					}	
				}	
			} 
		} else BotBossWaveSpecial();	
	}
}





#endregion



