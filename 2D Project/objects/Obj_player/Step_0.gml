/// @description Player Movement

//variables movement
var _horizontal_move = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _vertical_move = keyboard_check(ord("S")) -  keyboard_check(ord("W"));

//variables attack
var _melee_attack = mouse_check_button_pressed(mb_left);
var _powerup = keyboard_check(vk_space);

//variable that detects gamepad input
var _gp = global.gamepad_main;

//sets up gamepad controls
//we use left stick for movement + X on the Xbox controller for the melee attack
//plus sign used to be able to use both gamepad and keyboard at the same time
if (_gp != undefined){

   _horizontal_move += gamepad_axis_value(_gp, gp_axislh);
   _vertical_move += gamepad_axis_value(_gp, gp_axislv);
   _melee_attack += gamepad_button_check_pressed(_gp, gp_face3);
   _powerup += gamepad_button_check_pressed(_gp, gp_face4);
   
}

//makes sure that keyboard and gamepad aren't used at the same time to speed up commands
_horizontal_move = clamp(_horizontal_move, -1, 1);
_vertical_move = clamp(_vertical_move, -1, 1);

//move horizontally
if _horizontal_move != 0 {

   x = x + 1 * movement_speed * _horizontal_move
   
   //this is to check direction (helpful for melee attacks)
   
   //right
   if _horizontal_move = 1 {
	   direction = 0; 
   }
   
   //left
   if _horizontal_move = -1 {
	   direction = 180;
   
   }

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
	 
	 //this is to check direction (helpful for melee attacks)
	 //down
	 if _vertical_move = 1 {
		 direction = 270 
		 
	 }
	 
	 //up
	 if _vertical_move = -1 {
		 direction = 90
		 
	 }

     if (y < 0){

      y = room_height

    }
	 
	 if (y > room_height){

       y = 0

     }
}

//melee attack
if _melee_attack != 0 {
	
	var _sword = instance_create_layer(x, y, "Inst_player", Obj_sword_slash);
	_sword.image_angle = direction;


}

//power up
if _powerup != 0 {
	
	//eldritch blast ability
	if _spell_type = _spell_category[0]{
		
		show_debug_message("ELDRITCH BLAST!");
		
	}
	
	//teleport ability
	if _spell_type = _spell_category[1]{
		
		show_debug_message("TELEPORT");
		
	}
	
	//fireball ability
	if _spell_type = _spell_category[2]{
		
		show_debug_message("FIREBALL!");
		
	}
}

//categorization spells

//changing to Eldritch Blast
if (keyboard_check_pressed(ord("1"))){
		
	_spell_type = _spell_category[0];
	show_debug_message("Changed to: ELDRITCH BLAST");
	
}

//changing to Teleport
if (keyboard_check_pressed(ord("2"))){
		
	_spell_type = _spell_category[1];
	show_debug_message("Changed to: TELEPORT");
	
}

//changing to Fireball
if (keyboard_check_pressed(ord("3"))){
		
	_spell_type = _spell_category[2];
	show_debug_message("Changed to: FIREBALL");
	
}