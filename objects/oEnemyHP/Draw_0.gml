if(instance_exists(oEnemyTick)){
draw_text(oEnemyTick.x+47, oEnemyTick.y+75, "HP: " + string(oEnemyTick.hp));	
}
else{
instance_destroy();	
}