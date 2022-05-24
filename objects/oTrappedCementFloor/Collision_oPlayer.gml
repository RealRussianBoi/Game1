/// @desc Damage if on Index 2

if(image_index = 2){
with (other) {
	hp -= other.damage;
	
	repeat(5){
			with(instance_create_layer(x,bbox_bottom,"FloorParticles",oBlood)){
				image_angle++;
			}
			
	}
	}
}

