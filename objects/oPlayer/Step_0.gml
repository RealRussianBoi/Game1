if(!instance_exists(oTeleportVines)){
//Code takes player movement from keyboard
key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_up = keyboard_check_pressed(vk_up) or keyboard_check(ord("W"));
key_down = keyboard_check_pressed(vk_down) or keyboard_check(ord("S"));


//This stuff calculates movement for each fps
var move = key_right - key_left;
var moveV = key_down - key_up;
hsp = move * walksp;

vsp = moveV * verticalsp;

if (key_up) or (key_down)
{
		vsp = vsp;
}


//Horizontal collision
if (place_meeting(x+hsp,y,oWall))
{
while(!place_meeting(x+sign(hsp),y,oWall))
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
        sprite_index = sPlayer;
    } else {
        sprite_index = sPlayerR;
    }
 
} else {
    image_speed = 1;
    if (hsp == 0) {
        sprite_index = sPlayer;
    } else {
        sprite_index = sPlayerR;
    }
}

if (hsp != 0) image_xscale = sign(hsp);

damagecooldown++;

}














