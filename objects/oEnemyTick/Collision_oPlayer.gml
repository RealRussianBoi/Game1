with(oPlayer){
		repeat(5){
			
				with(instance_create_layer(x,y,"FloorParticles",oFloorDust)){
					image_angle++;
				}
			
			}
}