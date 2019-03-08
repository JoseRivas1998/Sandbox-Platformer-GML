/// @description Insert description here
// You can write your code in this editor
// THIS IS THE ANIMATION END EVENT, footsteps!
if(sprite_index == s_player_R) {
	audio_play_sound(
		choose(footstep1, footstep2, footstep3, footstep4),
		1,
		false
	);
}