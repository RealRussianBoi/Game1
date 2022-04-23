global.WaveNumber = 0;
WaveDelay = 60;
WaveDelayReset = WaveDelay;
WaveStart = false;
TileNum = instance_number(oDarkFloor);
TileQuantity = max(0,TileNum);
SpawnDelay = 60;
SpawnDelayReset = SpawnDelay;
randomTile = irandom_range(0,TileNum);
Floors = instance_find(oDarkFloor,TileQuantity);
global.EnemyQuantity = 10 * global.WaveNumber;


