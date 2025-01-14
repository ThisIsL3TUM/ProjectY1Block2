if(alarm[2] < 0){
	
	hp -= other._damage
	alarm[2] = 60;
	image_blend = c_red
	
	if(hp <= 0){
		
		room_restart()
		hp = hp_total
	
	}

}



