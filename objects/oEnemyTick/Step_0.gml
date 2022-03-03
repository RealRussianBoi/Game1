
//Horizontal Collision

if (place_meeting(x+hsp,y,oWall))
{
while(!place_meeting(x+sign(hsp), y,oWall))
{
	x = x+sign(hsp); 
}

hsp = 0;
}
x = x + hsp;

//Vertical collision

if (place_meeting(x, y + vsp, oWall)) {
    while (!place_meeting(x, y + sign(vsp), oWall)) {
        y = y + sign(vsp);
    }
    vsp = 0;

}
y = y + vsp;


//Animation (Character Mini Movements)

if (vsp != 0) {
 
   image_speed = 1;
    if (vsp == 0) {
        sprite_index = sEnemyTick;
    } else {
        sprite_index = sEnemyTickR;
    }
 
} else {
    image_speed = 1;
    if (hsp == 0) {
        sprite_index = sEnemyTick;
    } else {
        sprite_index = sEnemyTickR;
    }
}

if (hsp != 0) image_xscale = sign(hsp) * size;
image_yscale = size;

if (flash > 0)
{
 sprite_index = sEnemyTickWhiteRunning;
flash--;
}


















