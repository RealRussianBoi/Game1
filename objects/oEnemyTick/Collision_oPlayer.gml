/// @desc Damage and Flash


	
if(oPlayer.damagecooldown >= 20) {
	oPlayer.takedamage = true;
}else{
	oPlayer.takedamage = false;	
}

	if(oPlayer.takedamage = true) {
	oPlayer.hp--;
	oPlayer.flash = 2;
	oPlayer.damagecooldown = 0;
	
}

