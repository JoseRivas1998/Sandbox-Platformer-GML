#region // Get Player Input
if(hascontrol) {
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);
} else {
	key_left = 0;
	key_right = 0;
	key_jump = 0;
}
#endregion
#region // Calculate Movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if(place_meeting(x, y+1, o_wall) && key_jump) {
	vsp = -jumpsp;
}
#endregion
#region // Horizontal Collision
if(place_meeting(x + hsp, y, o_wall)) {
	while(!place_meeting(x + sign(hsp), y, o_wall)) {
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp;
#endregion
#region// Vertical Collision
if(place_meeting(x, y + vsp, o_wall)) {
	while(!place_meeting(x, y + sign(vsp), o_wall)) {
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;
#endregion
#region// Animation
if(!place_meeting(x, y + 1, o_wall)) {
	sprite_index = s_player_A;
	image_speed = 0;
	image_index = sign(vsp) > 0 ? 1 : 0;
} else {
	if(sprite_index == s_player_A) {
		audio_sound_pitch(snLanding, choose(0.8, 1.0, 1.2));
		audio_play_sound(snLanding, 4, false);
	}
	image_speed = 1;
	if(hsp == 0) {
		sprite_index = s_player;
	} else {
		sprite_index = s_player_R;
	}
}

if(hsp != 0) {
	image_xscale = sign(hsp);
}
#endregion
