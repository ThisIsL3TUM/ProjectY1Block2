if(alarm[2] < 0){
	
	hp -= other._damage
	show_debug_message(hp)
	alarm[2] = 60;
	image_blend = c_maroon
	
	if(hp <= 0){
		
		room_restart()
		hp = hp_total
	
	}

}



