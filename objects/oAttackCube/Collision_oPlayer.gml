with(oPlayer){
		repeat(5){
				hp -= other.damage;
				with(instance_create_layer(x,y,"FloorParticles",oBlood)){
					image_angle++;
				}
			
			}
}
