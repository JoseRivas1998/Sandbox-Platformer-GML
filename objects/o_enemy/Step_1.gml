// HEY JOSE THIS IS THE BEGIN STEP EVENT

if(hp <= 0) {
	with(instance_create_layer(x, y, layer, o_enemy_D)) {
		direction = other.hitfrom;
		hsp = lengthdir_x(4, direction);
		vsp = lengthdir_y(4, direction) - 2;
		if(sign(hsp) != 0) {
			image_xscale = sign(hsp) * other.size;
		}
		image_yscale = other.size;
	}
	instance_destroy();
	if(instance_exists(o_player)) {
		global.kills++;
		global.killsThisRoom++;
		with(o_game) {
			killTextScale = 2;
		}
	}
}
