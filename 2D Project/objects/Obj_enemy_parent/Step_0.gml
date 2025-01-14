
if(alarm[1] >= 0){
	
	_target_x = x + kb_x;
	_target_y = y + kb_y;

}

var _x_movement = clamp(_target_x - x, -1, 1)
var _y_movement = clamp(_target_y - y, -1, 1)

var _direction = point_direction(x, y, _target_x, _target_y)

move_and_collide(_x_movement * _move_speed_enemy, _y_movement * _move_speed_enemy, [_tilemap, Obj_collision_parent])