/// @desc Spawn things

if (triggered) 
{
	//Check the list for enemies which are ready to spawn and if they are the right wave/time we spawn them!
	for (var i = 0; i < ds_list_size(waves); i++) 
	{
		var next = ds_list_find_value(waves,i)
		if (next[_Wave] == current_wave) and (next[_Delay] == timer)
		{
		
			var spawnpoint = next[_Spawn];
			instance_create_layer(spawn[spawnpoint,0],spawn[spawnpoint,1],"Enemies",next[_Type]);
			}
		}
	
	timer++;
	
	if (remaining[current_wave] <= 0){
	
		if(current_wave == total_waves){
			instance_destroy();
		} else {
		current_wave++;
		timer = 0;
		}
	}	
}






