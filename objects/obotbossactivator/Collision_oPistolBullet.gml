image_index = 1;
instance_activate_object(oSteamWardenBoss);
var once = false;

if(once = false){
	once = true;
	with (oSteamWardenBoss){
		repeat(100){
			instance_create_layer(x,y,"Particles", oSteamWardenAppearanceParticle)
		
		}	
	}
}