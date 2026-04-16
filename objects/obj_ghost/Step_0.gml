if (instance_exists(obj_player)) {
	dist = distance_to_object(obj_player)
	
	if (dist < attack_range) {
		path_end()
		
		direction = point_direction(x, y, obj_player.x, obj_player.y)
		
		speed = hsp
	}
}