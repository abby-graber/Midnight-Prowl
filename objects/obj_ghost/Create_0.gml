chasing = false;
returning = false;

start_x = x;
start_y = y;

path_start(walk_path, hsp, path_action_reverse, true);
speed = hsp;

ps = part_system_create_layer("Assets", false)