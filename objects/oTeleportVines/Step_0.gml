if (image_speed > 0) {
    if (image_index > image_number - 1) {
		image_speed = 0;
	}
} 

if (instance_exists(oPlayerD)){
	instance_destroy(); 
	oPlayerD.image_alpha = 1;
} else {
	
}
