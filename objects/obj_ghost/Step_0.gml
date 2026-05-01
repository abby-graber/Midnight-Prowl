if (instance_exists(obj_player)) {
    var dist = distance_to_object(obj_player);

    if (dist < attack_range) {
        if (!chasing) {
            path_end();
            chasing = true;
            returning = false;
        }

        direction = point_direction(x, y, obj_player.x, obj_player.y);
        speed = hsp;
    }
    else {
        if (chasing) {
            chasing = false;
            returning = true;
            path_end();
        }
    }
}

// Smoothly return to path start
if (returning) {
    direction = point_direction(x, y, start_x, start_y);
    speed = hsp;

    if (point_distance(x, y, start_x, start_y) < 4) {
        x = start_x;
        y = start_y;

        returning = false;
        path_start(walk_path, hsp, path_action_reverse, true);
    }
}