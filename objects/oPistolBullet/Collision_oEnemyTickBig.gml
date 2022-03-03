with (other) {
	hp--;
	flash = 3;
	hitfrom = other.direction;
	//the hitfrom is going to be used to determine from which direction the enemies were shot at. 
	//the other. before the .direction makes that line of code interact with the bullet itself,
	//finding the direction from which the bullet was shot at.
	//we used the other. code bc this event is referring to the collision with oEnemyTick, not
	//the bullet itself.
}

instance_destroy();