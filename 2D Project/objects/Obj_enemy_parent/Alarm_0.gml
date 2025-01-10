/// @description visual area for enemy towards the player
if (instance_exists(Obj_player) && distance_to_object(Obj_player) < _distance_to_player){
	
	_target_x = Obj_player.x
	_target_y = Obj_player.y

}
else{
	
	_target_x = random_range(x - 100, x + 100)
	_target_y = random_range(y - 100, y + 100)

}

alarm[0] = 60
