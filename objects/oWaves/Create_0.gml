global.WaveNumber = 0;
WaveDelay = 600;
WaveDelayReset = WaveDelay;
WaveStart = false;
TileNum = instance_number(pFloor);
TileQuantity = max(0,TileNum);
SpawnDelay = 100;
SpawnDelayReset = SpawnDelay;
randomTile = irandom_range(0,TileNum);
Floors = instance_find(pFloor,TileQuantity);
EnemyQuantity = 10 * global.WaveNumber;


