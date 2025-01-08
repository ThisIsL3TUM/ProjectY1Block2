// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function aim_direction(x, y, gamepad_active){
	
	var aim_direction = 0;
	if gamepad_active = true {
		
		var _aim_direction_x = gamepad_axis_value(0, gp_axisrh);
		var _aim_direction_y = gamepad_axis_value(0, gp_axisrv);
		
		if abs(_aim_direction_x) > 0.1 || abs(_aim_direction_y) > 0.1 {
			
			aim_direction = point_direction(x, y, _aim_direction_x, _aim_direction_y);
		
		}
	
	}
	else {
		
		aim_direction = point_direction(x, y, mouse_x, mouse_y);
	
	}

}

