/// @description Variables

movement_speed = 6;
direction = 0; //degrees

//will work over those later
state = PLAYERSTATE.FREE

enum PLAYERSTATE
{
	FREE,
	ATTACK_MELEE
}

//stats player
hp = 4
hp_total = hp
damage = 1

//spell categories
_spell_category = ["Eldrich Blast", "Teleport", "Fireball"]
_spell_type = _spell_category[0];
_spell_cooldown = false

//spell activation
_spell_active = false

//spell direction
_spell_direction = 0;

//Eldritch Blast
_timer = 0
_bullet_counter = 0
