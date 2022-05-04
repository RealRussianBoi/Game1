if (instance_exists(oPlayerD)){
	instance_destroy(); 
	oPlayerD.image_alpha = 1;
} 

if (image_speed > 0) {
    if (image_index > image_number - 1) {
		image_speed = 0;
	}
}

time++;

if (time > 80){

oPlayer.x = oPumpkinPortalDestination.x;
oPlayer.y = oPumpkinPortalDestination.y;

oPlayer.image_alpha = 1;
oPistol.image_alpha = 1;	

instance_destroy();
}












