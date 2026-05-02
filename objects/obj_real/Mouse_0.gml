if (instance_exists(obj_player)) {
    if (point_distance(x, y, obj_player.x, obj_player.y) < 128) {
        var key = instance_create_layer(x, y, "Instances", obj_key);

		key.x = 288;
		key.y = 384;
    }
}