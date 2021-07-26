//the (other) basically adds in an outside object to be affected in this code for the bullet. 
//In this case it doesn't affect ALL enemy ticks but only affects the ones we hit with bullets.
with (other) {
	hp--;
	flash = 3;
	hitfrom = other.direction;
	
}

instance_destroy();









