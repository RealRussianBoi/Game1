if(hasweapon == true){

	Put_Enemy_Name_Here_Gun = instance_create_layer(x,y,"Guns",oDroneGun)
	with(Put_Enemy_Name_Here_Gun){
		
		owner = other.id;
		
	}
}
else Put_Enemy_Name_Here_Gun = noone;