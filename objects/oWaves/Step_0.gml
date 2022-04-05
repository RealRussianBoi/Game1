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
		TileCollision_w_Wall = instance_find(pFloor,TileQuantity);
		
		with(TileCollision_w_Wall){
			if(place_meeting(x,y,pCollidable)){
				next_to_wall = true;
				other.TileQuantity++;
			} else {
				other.TileQuantity++;
			}
		}
	}
}

#endregion
#region WaveStart == True

	if(WaveStart == true){
			randomTile = irandom_range(0,TileNum);
			Floors = instance_find(pFloor,TileQuantity);
			SpawnDelay = 0;
			var EnemyQuantity = 10 * global.WaveNumber;
			
			with(Floors){
				
				if(next_to_wall == true){
					randomTile = irandom_range(0,TileNum);
				} else if (next_to_wall == false){
					SpawnDelay++;
					if(SpawnDelay = 30){
						EnemyQuantity--;
						instance_create_layer(x,y,)
						
					}
					
				}
				
			}
		}
	}	

#endregion



