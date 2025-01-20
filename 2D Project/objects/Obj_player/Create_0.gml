/// @description Variables

movement_speed = 6;
direction = 0; //degrees

//Allows player to move or not
can_move = true

//will work over those later
state = PLAYERSTATE.FREE

enum PLAYERSTATE
{
	FREE,
	ATTACK_MELEE
}

//stats player
hp = 6
hp_total = hp
damage = 1
can_move = true

//spell categories
_spell_category = ["Eldrich Blast", "Burst", "Fireball"]
_spell_type = _spell_category[0];
_spell_cooldown = false

//spell activation
_spell_active = false

//spell direction
_spell_direction = 0;

//Eldritch Blast
_timer = 0
_bullet_counter = 0

//Cooldown Visualizer Variables
eb_cd = 80
eb_cd_max = eb_cd
burst_cd = 120
burst_cd_max = burst_cd
fb_cd = 100
fb_cd_max = fb_cd
burst_charge = 60
burst_charge_max = burst_charge

//Spell unlocking
eb_ul = false
burst_ul = false
fb_ul = false

//Quests
global.q1_active = false
global.q2_active = false
global.q3_active = false
global.kills = 0