image_angle = point_direction(x,y,oPlayer.x,oPlayer.y);
image_xscale = distance_to_object(oPlayer)/28;	

with(instance_create_layer(x,y,"PistolBullets",oSteamWardenLaserEndings)){
	
	image_xscale = 1.3;
	image_yscale = 1.3;
	image_index = 0;
	depth = depth - 1;
	
}

with(instance_create_layer(x,y,"PistolBullets",oSteamWardenLaserEndings2)){
	
	image_xscale = 1.3;
	image_yscale = 1.3;
	image_index = 1
	depth = depth - 1;
	
}

owner = 0;
laserStop = 0;