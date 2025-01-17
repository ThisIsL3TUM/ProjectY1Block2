/// @description Player Movement

//variables movement
var _horizontal_move = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _vertical_move = keyboard_check(ord("S")) -  keyboard_check(ord("W"));

//variables attack
var _melee_attack = mouse_check_button_pressed(mb_left);
var _powerup = keyboard_check_pressed(vk_space);

//variable that detects gamepad input
var _gp = global.gamepad_main;
var _gp_active = false; //detects if gamepad is active or not

//sets up gamepad controls
//we use left stick for movement + X on the Xbox controller for the melee attack
//plus sign used to be able to use both gamepad and keyboard at the same time
if (_gp != undefined){

   _horizontal_move += gamepad_axis_value(_gp, gp_axislh);
   _vertical_move += gamepad_axis_value(_gp, gp_axislv);
   _melee_attack += gamepad_button_check_pressed(_gp, gp_face3);
   _powerup += gamepad_button_check_pressed(_gp, gp_face4);
   
   _gp_active = true;
}

//makes sure that keyboard and gamepad aren't used at the same time to speed up commands
_horizontal_move = clamp(_horizontal_move, -1, 1);
_vertical_move = clamp(_vertical_move, -1, 1);

//move horizontally
if _horizontal_move != 0 {

   x = x + 1 * movement_speed * _horizontal_move
   show_debug_message(x);
  
   
   //this is to check direction (helpful for melee attacks + sprite direction)
   
   //right
   if _horizontal_move = 1 {
	   direction = 0;
	   sprite_index = Spr_player_walk_right;
   }
   
   //left
   if _horizontal_move = -1 {
	   direction = 180;
	   sprite_index = Spr_player_walk_left
   
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
		 sprite_index = Spr_player_walk_down
	 }
	 
	 //up
	 if _vertical_move = -1 {
		 direction = 90
		 sprite_index = Spr_player_walk_up
		 
	 }

     if (y < 0){

      y = room_height

    }
	 
	 if (y > room_height){

       y = 0

     }
}

//to check sprites and direction that player is facing
if _horizontal_move != 0 or _vertical_move != 0 {
	
	direction = point_direction(0, 0, _horizontal_move, _vertical_move)

}

//when player doesn't move, it's in idle mode
if _horizontal_move = 0 and _vertical_move = 0 {
	
	sprite_index = Spr_player_idle

}

//melee attack
if _melee_attack != 0 {
	
	var _sword = instance_create_layer(x, y, "Inst_player", Obj_sword_slash);
	_sword.image_angle = direction;


}


//power up
if _powerup != 0  && _spell_cooldown == false{
	
	//eldritch blast ability
	if _spell_type = _spell_category[0]{
		
		//if _spell_cooldown = false{
		
		show_debug_message("ELDRITCH BLAST!");
		if(_spell_active == false){
			
			_spell_active = true
			_spell_cooldown = true
			//if _gp_active = true{
				
				//var _aim_direction_x = gamepad_axis_value(_gp, gp_axisrh);
				//var _aim_direction_y = gamepad_axis_value(_gp, gp_axisrv);
				
				//if abs(_aim_direction_x) > 0.8 || abs(_aim_direction_y) > 0.8 {
					
					//_eldritch.direction = point_direction(x, y, _aim_direction_x, _aim_direction_y);
					
					//}
			
			//} 
			//else {
				
				_spell_direction = point_direction(x, y, mouse_x, mouse_y);
			
			//}
			
		
		}
		
	}
	
	
	//teleport ability
	if _spell_type = _spell_category[1]{
		
		x = mouse_x; y = mouse_y;
		show_debug_message("TELEPORT");
		_spell_cooldown = true;
		var _teleport_circle = instance_create_layer(x, y, "Inst_projectiles", Obj_teleport)
		alarm[0] = 120;
		
	}
	
	//fireball ability
	if _spell_type = _spell_category[2]{
		
		show_debug_message("FIREBALL!");
		//spellDirection variable locks the spell in place. Not too important for this spell. point_direction will also work.

	_spell_cooldown = true
	var Fireball = instance_create_layer(x,y,"inst_projectiles", Obj_fireball)
		Fireball.speed = 3;
		Fireball.direction = point_direction(x, y, mouse_x, mouse_y)
	//creates the collision object so the fireball "knows" when to explode and create the explosion object.
	//Creation of the explosion is done in the Obj_fireball step code.
	var FireballCollision = instance_create_layer(mouse_x, mouse_y, "inst_Player", Obj_fireballCollide)
	alarm[0] = 120
//alarm 4 destroys the explosion object and alarm 1 is the cooldown
	}
}

//timig Eldritch Blast
if(_spell_active == true) {
		
		if(_bullet_counter < 3 ) {
			if(_timer == 0){
				var _eldritch_bullet = instance_create_layer(x,y,"Inst_projectiles", Obj_eldritch_blast)
				_eldritch_bullet.speed = 5;
				_eldritch_bullet.direction = _spell_direction
				_bullet_counter++
				alarm[0] = 75 //resets cooldown
				}
			} 
			else {
				_bullet_counter = 0
				_spell_active = false
				// after the desired amount of bullets has been fired, the spell is "turned off" and stops creating bullets.
				}
		}
		
_timer = (_timer + 1) % 15
//the timer indicates the amount of frames between the bullets, aka firing speed.
		
		
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