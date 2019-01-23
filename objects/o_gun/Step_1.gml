// HEY JOSE THIS IS THE BEGIN STEP EVENT, DONT LOOK STUPID IN FRONT OF KIDS
x = o_player.x;
y = o_player.y + 10;

image_angle = point_direction(x, y, mouse_x, mouse_y);


image_yscale = sign(dcos(image_angle));

firingdelay--;
if(mouse_check_button(mb_left)) && (firingdelay < 0) {
	firingdelay = 5;
	with(instance_create_layer(x, y, "Bullets", o_bullet)) {
	}
}
