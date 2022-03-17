x += lengthdir_x(spd,direction);
y += lengthdir_y(spd,direction);

if (place_meeting (x, y, pCollidable)){
	
	while(place_meeting(x,y,pCollidable)){
		
		x -= lengthdir_x(1,direction);
		y -= lengthdir_y(1,direction);
		
	}
	spd = 0;
	instance_change(oDefaultBCollision,true);
	
}

