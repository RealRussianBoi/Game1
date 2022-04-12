/// @description Move to next room

image_speed = 1;

with (oPlayer) {

if (oPumpkinPortalNext.image_speed > 0) {
    if (oPumpkinPortalNext.image_index > oPumpkinPortalNext.image_number - 1) {
		oPumpkinPortalNext.image_speed = 0;
	}
	
 }
other.time++;
if (other.time == 80){
	if (hascontrol) {
		hascontrol = false;
		SlideTransition(TRANS_MODE.GOTO,Room4);
	}
}

}

with(oPlayer){
	image_alpha = 0;
	instance_create_layer(oPlayer.x,oPlayer.y,"PortalEffects",oTeleportVines);
	oTeleportVines.image_xscale = oPlayer.image_xscale;
}









