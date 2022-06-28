// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MovementBlockageVsImpassible(){

//Horizontal collision
if (place_meeting(x+hsp,y,pPlayerImpassible))
{
	hsp = 0;
}

//Vertical collision
if (place_meeting(x, y + vsp,pPlayerImpassible)) {
      vsp = 0;
}

}

