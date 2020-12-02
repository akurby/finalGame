/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_enter)){
	if(room == rm_start){
		room_goto(rm_maze);
	}
}

if (room == rm_maze){
	if(oxygen <= 0){
		room_goto(rm_gameOver);
	}
}

timer--;
if (timer <= 0){
	oxygen--;
	if (oxygen < 75){
		obj_Flame.image_xscale -= 0.002;
		obj_Flame.image_yscale -= 0.002;
	}
    timer = room_speed * 1;
    global.points++;
}

