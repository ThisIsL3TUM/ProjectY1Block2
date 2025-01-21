/// @description UI for player

//heart draw related variables
var _heart_distance = sprite_get_width(Spr_health_heart)
var _positionx = 0

//heart draw
if(instance_exists(Obj_player)){
	
	//Spell Cooldowns
	
	draw_sprite(Spr_ebCd,0,540,690)
	draw_sprite(Spr_burstCd,0,640,690)
	draw_sprite(Spr_fbCd,0,740,690)
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

if global.q1_active = true {
	draw_sprite(Spr_kills, 0, 1200, 40)
	if global.kills <10{
	draw_text(1191,18,global.kills)}
	else if global.kills>9{
		draw_text(1181,18,global.kills)
		}
}
if global.q2_active = true {
	draw_sprite(Spr_kills, 0, 1200, 40)
	if global.kills <10{
	draw_text(1191,18,global.kills)}
	else if global.kills>9{
		draw_text(1181,18,global.kills)
		}
if global.q3_active = true {
	draw_sprite(Spr_kills, 0, 1200, 40)
	if global.kills <10{
	draw_text(1191,18,global.kills)}
	else if global.kills>9{
		draw_text(1181,18,global.kills)
		}
}}