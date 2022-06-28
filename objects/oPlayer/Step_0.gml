if(!place_meeting(x,y,oPumpkinPortalNext2)){
//Code takes player movement from keyboard
key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_up = keyboard_check_pressed(vk_up) or keyboard_check(ord("W"));
key_down = keyboard_check_pressed(vk_down) or keyboard_check(ord("S"));


//This stuff calculates movement for each fps
var move = key_right - key_left;
var moveV = key_down - key_up;

hsp = (move * walksp) + gunRecoilX;
gunRecoilX = 0;

vsp = (moveV * verticalsp) + gunRecoilY;
gunRecoilY = 0;

if (key_up) or (key_down)
{
		vsp = vsp;
}

//Player Collisions in the following Scripts:
PlayerMovementBlockage();


//Sprite Changing
if (vsp != 0) {
 
   image_speed = 1;
    if (vsp == 0) {
        sprite_index = sRevisedPlayer;
    } else {
        sprite_index = sRevisedPlayerR;
    }
 
} else {
    image_speed = 1;
    if (hsp == 0) {
        sprite_index = sRevisedPlayer;
    } else {
        sprite_index = sRevisedPlayerR;
    }
}

if (hsp != 0) image_xscale = sign(hsp);

damagecooldown++;

}













