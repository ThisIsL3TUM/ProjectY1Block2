/// @description Player Movement

//variables movement
var _horizontal_move = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _vertical_move = keyboard_check(ord("S")) -  keyboard_check(ord("W"));

//variable that detects gamepad input
var _gp = global.gamepad_main;

//sets up gamepad controls
//we use left stick for movement
//plus sign used to be able to use both gamepad and keyboard at the same time
if (_gp != undefined){

   _horizontal_move += gamepad_axis_value(_gp, gp_axislh);
   _vertical_move += gamepad_axis_value(_gp, gp_axislv);
   
}

//makes sure that keyboard and gamepad aren't used at the same time to speed up commands
_horizontal_move = clamp(_horizontal_move, -1, 1);
_vertical_move = clamp(_vertical_move, -1, 1);

//move horizontally
if _horizontal_move != 0 {

   x = x + 1 * movement_speed * _horizontal_move

   if (x < 0){

    x = room_width

  }
   
   if ( x > room_width){

     x = 0

   }

}


//move vertically
if _vertical_move != 0 {

     y = y + 1 * movement_speed * _vertical_move

     if (y < 0){

      y = room_height

    }
	 
	 if (y > room_height){

       y = 0

     }
}