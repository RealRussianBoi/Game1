//desc Draw Wave Num

if(room != rMenu){
	draw_sprite(sWaveNum,0,(RES_W/2) - 100,30)	
	draw_text((RES_W/2) + 90, 55, global.WaveNumber);
	
	if(WaveStart == false){
		draw_text((RES_W)/2 + 100, 100, "Time Till Wave: ");
		draw_text((RES_W)/2 + 170, 100, string(WaveDelay / 60));
		
	} else {
		draw_text((RES_W)/2 + 170, 100, "Enemies Remaining: ");
		draw_text((RES_W)/2 + 210, 100, string(global.EnemyQuantity));
	}
}



