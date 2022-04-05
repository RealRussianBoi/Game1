global.WaveNumber = 0;
WaveDelay = 600;
WaveDelayReset = WaveDelay;
WaveStart = false;
TileNum = instance_number(pFloor);
TileQuantity = max(0,TileNum);
TileCollision_w_Wall = instance_find(pFloor,TileQuantity);
SpawnDelay = 30;
SpawnDelayReset = SpawnDelay;
randomTile = irandom_range(0,TileNum);
Floors = instance_find(pFloor,TileQuantity);


