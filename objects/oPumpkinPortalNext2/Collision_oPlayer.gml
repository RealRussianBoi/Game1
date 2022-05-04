image_speed = 1;

if (image_speed > 0) {
    if (image_index > image_number - 1) {
		image_speed = 0;
	}
}

with(oPlayer){
	image_alpha = 0;
	oPistol.image_alpha = 0;
	with(instance_create_layer(oPlayer.x,oPlayer.y,"PortalEffects",oTeleportVines)){
		image_xscale = oPlayer.image_xscale
	}
}







