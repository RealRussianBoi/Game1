#region look for player

	if(!instance_exists(owner)){
		with(obj_player){
			other.owner = id;	
		}
	}

#endregion