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
_spell_category = ["Eldrich Blast", "Teleport", "Fireball"]
_spell_type = _spell_category[0];
eb_cd = false
burst_cd = false
fb_cd = false


//spell activation
_spell_active = false

//spell direction
_spell_direction = 0;

//Eldritch Blast
_timer = 0
_bullet_counter = 0

//Cooldown Visualizer Variables
eb_cdVis = 75
eb_cd_max = eb_cdVis

burst_cdVis = 120
burst_cd_max = burst_cdVis

fb_cdVis = 160
fb_cd_max = fb_cdVis

eb_bar_width = 64
eb_bar_height = 64
eb_bar_x = 540
eb_bar_y = 690

_eb_timer = 75
_burst_timer = 0
_fb_timer = 0
//tilemap ID
tree_tilemap = layer_tilemap_get_id("Plants")

//Spell unlocking
eb_ul = false
burst_ul = false
fb_ul = false

//Quests
global.q1_active = false
global.q1_complete = false
global.q2_active = false
global.q2_complete = false
global.q3_active = false
global.q3_complete = false
global.kills = 0
