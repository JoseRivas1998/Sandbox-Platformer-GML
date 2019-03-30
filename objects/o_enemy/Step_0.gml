// Calculate Movement

vsp = vsp + grv;

// Don't walk off edges
if(grounded && afraidOfHeights && !place_meeting(x + hsp, y + 1, o_wall)) {
	hsp = -hsp;
}

// Horizontal Collision
if(place_meeting(x + hsp, y, o_wall)) {
	while(!place_meeting(x + sign(hsp), y, o_wall)) {
		x += sign(hsp);
	}
	hsp = -hsp;
}

x += hsp;

// Vertical Collision
if(place_meeting(x, y + vsp, o_wall)) {
	while(!place_meeting(x, y + sign(vsp), o_wall)) {
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;

// Animation
if(!place_meeting(x, y + 1, o_wall)) {
	grounded = false;
	sprite_index = s_enemy_A;
	image_speed = 0;
	image_index = sign(vsp) > 0 ? 1 : 0;
} else {
	grounded = true;
	image_speed = 1;
	if(hsp == 0) {
		sprite_index = s_enemy;
	} else {
		sprite_index = s_enemy_R;
	}
}

if(hsp != 0) {
	image_xscale = sign(hsp) * size;
}
image_yscale = size;
