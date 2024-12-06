//function for collision
function collision(){
	//set target values
	var _targetx = x;
	var _targety = y;
	
	//move back to the last step position (out of collision)
	x = xprevious;
	y = yprevious;
	
	//get distance we want to move
	var _distancex = abs(_targetx - x); //abs - makes sure that the number is always positive
	var _distancey = abs(_targety - y);
	
	repeat(_distancex){
		if !place_meeting(x + sign(_targetx - x), y, Obj_collision_parent)
		x += sign(_targetx - x);
	}
	
	repeat(_distancey){
		if !place_meeting(x, y + sign(_targety - y), Obj_collision_parent)
		y += sign(_targety - y);
	}

}