 //the (other) basically involves the oEnemyTick it will hit to be affected by this code for the bullet. 
//In this case it doesn't affect ALL enemy ticks but only affects the ones we hit with bullets.
with (other) {
	hp--;
	flash = 3;
	hitfrom = other.direction;
	//the hitfrom is going to be used to determine from which direction the enemies were shot at. 
	//the other before the .direction makes that line of code interact with the bullet itself,
	//finding the direction from which the bullet was shot at.
	//we used the other. code bc this event is referring to the collision with oEnemyTick, not
	//the bullet itself.
}

instance_destroy();









