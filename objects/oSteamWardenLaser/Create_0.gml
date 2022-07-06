image_angle = point_direction(x,y,oPlayer.x,oPlayer.y);
image_yscale = choose(1,-1);

if(sprite_get_width(5) > distance_to_object(oPlayer)){
	do {
	    image_xscale += 0.1
	} until (place_meeting(x,y,oPlayer));
} else {
	image_xscale = distance_to_object(oPlayer)/sprite_get_width(5);	
}
owner = 0;
laserStop = 0;