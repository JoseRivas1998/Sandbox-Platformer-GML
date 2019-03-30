/// @description Insert description here
// You can write your code in this editor
// DRAW GUI
if(room != rMenu && instance_exists(o_player) && global.kills > 0) {
	killTextScale = max(killTextScale * 0.95, 1);
	DrawSetText(c_black, f_menu, fa_right, fa_top);
	draw_text_transformed(RES_W - 8, 12, string(global.kills) + " Pointless Murders :(", killTextScale, killTextScale, 0);
	draw_set_color(c_white);
	draw_text_transformed(RES_W - 10, 10, string(global.kills) + " Pointless Murders :(", killTextScale, killTextScale, 0);
}