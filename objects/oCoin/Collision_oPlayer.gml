global.Coins = global.Coins + Value;

with(instance_create_layer(x,y,"Coins",oCoinDissipate)){
	dCoinSize = other.CoinSize;
	with(oGame) cointextscale = 1.5;
}

instance_destroy();
	
	
	
	
	




