// HEY JOSE THIS IS THE COLLISION WITH o_enemy, DONT LOOK STUPID IN FRONT OF KIDS

with(other) {
	hp--;
	flash = 3;
	hitfrom = other.direction;
}

instance_destroy();
