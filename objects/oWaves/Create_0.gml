global.WaveNumber = 5;
WaveDelay = 60;
WaveDelayReset = WaveDelay;
WaveStart = false;
TileNum = instance_number(oCementFloor);
TileQuantity = max(0,TileNum);
SpawnDelay = 60;
SpawnDelayReset = SpawnDelay;
randomTile = irandom_range(0,TileNum);
Floors = instance_find(oCementFloor,TileQuantity);
global.EnemyQuantity = 10 * global.WaveNumber;
global.BossWave = false;
BaseEnemyNum = 10;
BossWaveSpecial = false;


instance_deactivate_object(self);