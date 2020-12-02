/// @description Insert description here
// You can write your code in this editor
var spd = 2.5;
if (keyboard_check(vk_left)){
	x -= spd;
}

if (keyboard_check(vk_right)){
	x += spd;
}
if (keyboard_check(vk_up)){
	y -= spd;
}
if (keyboard_check(vk_down)){
	y += spd;
}

if (obj_Game.oxygen <= 0){
	room_goto(rm_gameOver);
}
if (obj_Game.oxygen > 0){
	if(x>1190 && x <1300 && y > 730){
		room_goto(rm_winner);
	}
}