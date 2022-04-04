//desc Draw Wave Num

if(room != rMenu){
	draw_sprite(sWaveNum,0,(RES_W/2) - 140,30)	
	draw_text((RES_W/2) + 50, 55, global.WaveNumber);
	
	if(WaveStart == false){
		draw_text((RES_W)/2 + 150, 100, "Time Till Wave: " + string(WaveDelay / 60));
		
	}
}



