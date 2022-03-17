//@desc HP loss and Flash Add

if(damagecooldown > 30){
	takedamage = true;	
}
else{
	takedamage = false;	
}

	if(takedamage = true){
	hp = hp - other.damage;
	damagecooldown = 0;
	instance_create_layer(oPlayer.x,oPlayer.y,"Blood",oBloodBurst);
		
	repeat(5){
			with(instance_create_layer(x,bbox_bottom,"FloorParticles",oFloorDust)){
				image_angle++;
			}
			
	}
}









