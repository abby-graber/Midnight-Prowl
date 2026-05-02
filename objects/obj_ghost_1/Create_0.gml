enemy_flash_timer = 0;
enemy_flash_duration = 10;

move_speed = 2;
run_speed = 4;

state = "wander";

wander_dir = irandom(359);
wander_timer = 60;

view_distance = 180;

hp = 10;

knockback_hsp = 0;
knockback_vsp = 0;
knockback_decay = 0.8; // how quickly it slows down

ps = part_system_create_layer("Assets", false)