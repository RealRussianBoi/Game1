function BotBossWaveSpecial(){

	if(instance_exists(oPlayer)){
		instance_create_layer(1503,1536,"BossPortal1",oBotBossPortal);	
	}
	if(oBotBossActivator.image_index = 1){
		if(instance_exists(oSteamWardenBossD)){
			WaveStart = false;
		}
	}
}