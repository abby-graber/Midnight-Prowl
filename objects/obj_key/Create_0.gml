if (room == rm_level1) {
	var door = instance_create_layer(x, y, "Instances", obj_doorLight);
	door.x = 576;
	door.y = 704;
}

global.has_key = false