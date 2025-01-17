/// @description UI for player

var _heart_distance = sprite_get_width(Spr_health_heart)
var _positionx = 0
if(instance_exists(Obj_player)){
	
	for (var i = 0; i < hp; i++){
		
		draw_sprite(Spr_health_heart, 0, 40 + _positionx, 40)
		_positionx += _heart_distance
		
	}

}
