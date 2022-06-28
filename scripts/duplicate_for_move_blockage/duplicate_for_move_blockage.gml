function DUPLICATE_FOR_MOVE_BLOCKAGE(){
	
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

/*WARNING! PLACE SCRIPT INSIDE PlayerMovementBlockage SCRIPT AT THE VERY TOP 
FOR IT TO REGISTER AND WORK IN THE SAME WAY I DID TO MovementBlockageVsImpassible*/

