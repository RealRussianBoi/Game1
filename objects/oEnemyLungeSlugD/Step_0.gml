
if (done == 0){
	
	
	vsp = vsp + grv;

	//Horizontal collision
	if (place_meeting(x+hsp,y,pCollidable))
	{
	while(!place_meeting(x+sign(hsp), y,pCollidable))
	{
		x = x +sign(hsp); 
	}

	hsp = 0;
	}
	x = x + hsp;

	//Vertical collision
	if (place_meeting(x,y+vsp,pCollidable))
	{
		if (vsp > 0) {
			done = 1;
			image_index = 1;
			}
			
	while(!place_meeting(x, y+sign(vsp),pCollidable))
	{
		y = y +sign(vsp); 
	}

	vsp = 0;
	}
	y = y + vsp;


}

if(done==1){
waitTime++
}

if(waitTime==120){
instance_destroy();	
}

if(waitTime==121){
waitTime=0;	
}


