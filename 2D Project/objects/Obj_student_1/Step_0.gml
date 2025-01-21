/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event


cooldownTimer--;

if ( cooldownTimer <= 0 and to_spawnEmojiBox_Id != noone) {
cooldownTimer = cooldownTime;
    instance_destroy(to_spawnEmojiBox_Id);
    to_spawnEmojiBox_Id = noone;
}