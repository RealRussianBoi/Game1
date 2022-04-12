if(hasweapon == true){

	DroneGun = instance_create_layer(x,y,"Guns",oDroneGun)
	with(DroneGun){
		
		owner = other.id;
		
	}
}
else DroneGun = noone;