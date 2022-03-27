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
ds_list_add(waves,[0,oEnemyTick,0,100]);
ds_list_add(waves,[0,oEnemyTick,0,200]);
ds_list_add(waves,[0,oEnemyTick,0,300]);
ds_list_add(waves,[0,oEnemyTick,0,400]);
ds_list_add(waves,[0,oEnemyTick,0,500]);
ds_list_add(waves,[0,oEnemyTick,0,600]);

ds_list_add(waves,[1,oEnemyTick,1,100]);
ds_list_add(waves,[1,oEnemyDrone,1,200]);
ds_list_add(waves,[1,oEnemyTick,1,300]);
ds_list_add(waves,[1,oEnemyDrone,1,400]);
ds_list_add(waves,[1,oEnemyTick,1,500]);
ds_list_add(waves,[1,oEnemyDrone,1,600]);

ds_list_add(waves,[2,oEnemyDrone,0,100]);
ds_list_add(waves,[2,oEnemyDrone,0,200]);
ds_list_add(waves,[2,oEnemyDrone,0,300]);
ds_list_add(waves,[2,oEnemyDrone,0,400]);
ds_list_add(waves,[2,oEnemyDrone,0,500]);
ds_list_add(waves,[2,oEnemyDrone,0,600]);

ds_list_add(waves,[3,oEnemyTickBig,1,100]);
ds_list_add(waves,[3,oEnemyTickBig,0,200]);
ds_list_add(waves,[3,oEnemyTickBig,1,200]);

/*X*/spawn[0,0] = 500;
/*Y*/spawn[0,1] = 500;
/*X*/spawn[1,0] = 895;
/*Y*/spawn[1,1] = 1090;
