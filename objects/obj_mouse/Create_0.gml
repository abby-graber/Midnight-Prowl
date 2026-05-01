move_speed = 2;
run_speed = 4;

state = "wander";

wander_dir = irandom(359);
wander_timer = 60;

view_distance = 180;

destroy_buffer = room_speed * 10; // 10 seconds