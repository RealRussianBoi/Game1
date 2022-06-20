/// @desc Create particles. 

Countdown--;

if(Countdown <= 0){
	instance_create_layer(x + (irandom_range(-23,23)*image_xscale),y + (irandom_range(-23,23)*image_yscale),"Particles",oBotBossPortalParticle);
	Countdown = CountdownReset;
}
