cooldownTimer = cooldownTime;

if keyboard_check_pressed(ord("I")) and (to_spawnEmojiBox_Id == noone) {

var textBubble = instance_create_layer (x , y - sprite_height, "Inst_Tree", Obj_bubble)
    to_spawnEmojiBox_Id = textBubble.id;
    textBubble.what_imageIndex = 2
}