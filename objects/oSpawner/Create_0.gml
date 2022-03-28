//desc Setup

#macro _Wave 0
#macro _Type 1
#macro _Spawn 2 
#macro _Delay 3

triggered = false;
timer = 0;
current_wave = 0;



//[wave,type,spawnpoint,delay]
waves = ds_list_create();
ds_list_add(waves,[0,oEnemyTick,0,30]);
ds_list_add(waves,[0,oEnemyTick,0,60]);
ds_list_add(waves,[0,oEnemyTick,0,90]);
ds_list_add(waves,[0,oEnemyTick,0,120]);
ds_list_add(waves,[0,oEnemyTick,0,160]);
ds_list_add(waves,[0,oEnemyTick,0,240]);

ds_list_add(waves,[1,oEnemyTick,1,30]);
ds_list_add(waves,[1,oEnemyDrone,1,60]);
ds_list_add(waves,[1,oEnemyTick,1,90]);
ds_list_add(waves,[1,oEnemyDrone,1,120]);
ds_list_add(waves,[1,oEnemyTick,1,180]);
ds_list_add(waves,[1,oEnemyDrone,1,240]);

ds_list_add(waves,[2,oEnemyDrone,0,30]);
ds_list_add(waves,[2,oEnemyDrone,0,60]);
ds_list_add(waves,[2,oEnemyDrone,0,90]);
ds_list_add(waves,[2,oEnemyDrone,0,120]);
ds_list_add(waves,[2,oEnemyDrone,0,180]);
ds_list_add(waves,[2,oEnemyDrone,0,240]);

ds_list_add(waves,[3,oEnemyTickBig,1,100]);
ds_list_add(waves,[3,oEnemyTickBig,0,130]);
ds_list_add(waves,[3,oEnemyTickBig,1,160]);

/*X*/spawn[0,0] = 500;
/*Y*/spawn[0,1] = 500;
/*X*/spawn[1,0] = 895;
/*Y*/spawn[1,1] = 1090;
