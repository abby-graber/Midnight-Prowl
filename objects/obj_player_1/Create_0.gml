hp = 100;

depth = -10;

damage_cooldown = 0; 
damage_delay = 30;

move_speed = 4;

attack = false;
moving = false;

push_x = 0;
push_y = 0;

ps = part_system_create_layer("Assets", false)
part_system_depth(ps, -100)
walk_particle_timer = 0;
walk_particle_delay = 10;