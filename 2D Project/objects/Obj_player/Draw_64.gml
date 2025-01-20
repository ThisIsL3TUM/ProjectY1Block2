/// @description UI for player

//heart draw related variables
var _heart_distance = sprite_get_width(Spr_health_heart)
var _positionx = 0

//heart draw
if(instance_exists(Obj_player)){
	
	//to draw hearts, a full heart has 2HP in it
	for (var i = 0; i < hp - 1; i++){
		
		if (i % 2 = 0){
			draw_sprite(Spr_health_heart, 0, 40 + _positionx, 40)
			_positionx += _heart_distance
		}
		
	}
	
	//when odd number, it shows a half empty heart
	if(hp % 2 = 1){
		
		draw_sprite(Spr_health_heart, 1, 40 + _positionx, 40)
	}

}