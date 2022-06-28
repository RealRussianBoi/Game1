function PlayerMovementBlockage(){


MovementBlockageVsImpassible();


//Horizontal collision
if (place_meeting(x+hsp,y,pCollidable))
{
while(!place_meeting(x+sign(hsp),y,pCollidable))
{
	x = x+sign(hsp); 
}

hsp = 0;
}
x = x + hsp;

//Vertical collision
if (place_meeting(x, y + vsp, pCollidable)) {
    while (!place_meeting(x, y + sign(vsp), pCollidable)) {
        y = y + sign(vsp);
    }
    vsp = 0;

}
y = y + vsp;

}