/// @description Insert description here
// You can write your code in this editor
// COLLISION ENEMY
with(o_gun) {
	instance_destroy();
}

instance_change(o_player_D, true);

direction = point_direction(other.x, other.y, x, y);
hsp = lengthdir_x(6, direction);
vsp = lengthdir_y(4, direction) - 2;

if(sign(hsp) != 0) {
	image_xscale = sign(hsp);
}

global.kills -= global.killsThisRoom;
