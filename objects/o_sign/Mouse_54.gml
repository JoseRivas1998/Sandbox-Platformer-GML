/// @description Insert description here
// You can write your code in this editor
// MOUSE > GLOBAL > GLOBAL RIGHT PRESSED
/// VARIABLE DEFINITION TEXT AS STRING
if(point_in_circle(o_player.x, o_player.y, x, y, 64) && (!instance_exists(o_text))) {
	with(instance_create_layer(x, y - 64, layer, o_text)) {
		text = other.text;
		length = string_length(text);
	}
	
	with(o_camera) {
		follow = other.id;
	}
	
}