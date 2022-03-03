if(instance_exists(oPlayer)){
draw_text(oPlayer.x+47, oPlayer.y+75, "HP: " + string(oPlayer.hp));	
}
else{
instance_destroy();	
}