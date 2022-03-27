if(triggered) {
	var str = "Remaining: ";
	for (var i = 0; i < array_length_1d(remaining); i++){
		str += string(remaining[i]) + "|";		
	}
	
	draw_text(300,300,
	str
	+"\nwaves total: " + string(total_waves)
	+"\nwaves now: " + string(current_wave)
	)
	
	
}