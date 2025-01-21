
if(alarm[1] >= 0){
	
	_target_x = x + kb_x;
	_target_y = y + kb_y;

}

var _x_movement = clamp(_target_x - x, -1, 1)
var _y_movement = clamp(_target_y - y, -1, 1)

var _direction = point_direction(x, y, _target_x, _target_y)

move_and_collide(_x_movement * _move_speed_enemy, _y_movement * _move_speed_enemy, [_tilemap, Obj_collision_parent, Obj_editor_wall])


//to check sprites and direction that player is facing
if _x_movement != 0 or _y_movement != 0 {
	
	direction = point_direction(0, 0, _x_movement, _y_movement)

}

//when player doesn't move, it's in idle mode
if _x_movement = 0 and _y_movement = 0 {
	
	sprite_index = Spr_enemy_idle
	
}

 if _y_movement = 1 {
		 direction = 270
		 sprite_index = Spr_enemy_walk_down
	 }
	 
	 //up
	 if _y_movement = -1 {
		 direction = 90
		 sprite_index = Spr_enemy_walk_up
	 }

	if _x_movement = 1 {
	   direction = 0;
	   sprite_index = Spr_enemy_walk_right;
   }
   
   //left
   if _x_movement = -1 {
	   direction = 180;
	   sprite_index = Spr_enemy_walk_left
   
   }