// HEY JOSE THIS IS THE BEGIN STEP EVENT, DONT LOOK STUPID IN FRONT OF KIDS
x = o_player.x;
y = o_player.y + 10;

image_angle = point_direction(x, y, mouse_x, mouse_y);

image_yscale = sign(dcos(image_angle));
image_yscale = image_yscale == 0 ? 1 : image_yscale;

firingdelay--;
recoil = max(0, recoil - 1);
if((mouse_check_button(mb_left)) && (firingdelay < 0)) {
	recoil = 4;
	firingdelay = 5;
	with(instance_create_layer(x, y, "Bullets", o_bullet)) {
		speed = 25;
		direction = other.image_angle + random_range(-3, 3);
		image_angle = direction;
	}
}

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);
