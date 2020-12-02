/// @description Insert description here
// You can write your code in this editor

if (room == rm_start){
	draw_set_halign(fa_center);
	var color = c_white;
	draw_text_transformed_color(room_width/2, 200, "MAZE OF SUFFOCATION", 3, 3, 0, color, color, color, color, 1);
	draw_text(room_width/2, 400, @"You wake up as a flame in a strange maze. 
	The oxygen in the maze continuously decreases.
	Escape the maze before you die out.
	Use arrow keys to move.

	>> PRESS ENTER TO START <<
	"
	);
	draw_set_halign(fa_left);
}

if (room == rm_gameOver){
	draw_set_halign(fa_center);
	var color = c_red;
	draw_text_transformed_color(room_width/2, 200, "YOU LIT OUT BEFORE YOU COULD REACH THE EXIT", 3, 3, 0, color, color, color, color, 1);
	draw_text(room_width/2, 400, ">> GAME OVER <<");
	draw_set_halign(fa_left);
}

if (room == rm_winner){
	draw_set_halign(fa_center);
	var color = c_white;
	draw_text_transformed_color(room_width/2, 200, "YOU ESCAPED THE MAZE", 3, 3, 0, color, color, color, color, 1);
	draw_text(room_width/2, 400, ">> CONGRATULATIONS! THANKS FOR PLAYING :) <<");
	draw_set_halign(fa_left);
}