/// @description Insert description here
// You can write your code in this editor
if (surface_exists(light)){
	draw_surface(light, 0, 0);
	
	surface_set_target(obj_Surface.light);
	
	draw_clear_alpha(c_black, 0);
	
	draw_set_color(c_black);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_color(c_white);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(spr_Light, 0, obj_Flame.x, obj_Flame.y,1,1,0,c_yellow,0.8);
	gpu_set_blendmode(bm_normal);
	
	draw_text(20, 20, "OXYGEN:	" + string(obj_Game.oxygen) + "%");
	
	surface_reset_target();
}
