moving = false;
push_dir = 0;

// Horizontal movement
var hsp = 0;

if (keyboard_check(ord("A"))) {
    hsp = -move_speed;
    push_dir = -1;
    moving = true;
    image_xscale = abs(image_xscale);
	
	if (place_meeting(x, y + 1, obj_block) && (walk_particle_timer <= 0)) {
		part_particles_burst(ps, x - 20, bbox_bottom - 5, ps_walk)
		walk_particle_timer = walk_particle_delay;
	}
}

if (keyboard_check(ord("D"))) {
    hsp = move_speed;
    push_dir = 1;
    moving = true;
    image_xscale = -abs(image_xscale);
	
	if (place_meeting(x, y + 1, obj_block) && (walk_particle_timer <= 0)) {
		part_particles_burst(ps, x - 20, bbox_bottom - 5, ps_walk)
		walk_particle_timer = walk_particle_delay;
	}
}

// Horizontal collision with walls only
if (place_meeting(x + hsp, y, obj_block)) {
    while (!place_meeting(x + sign(hsp), y, obj_block)) {
        x += sign(hsp);
    }
    hsp = 0;
}

x += hsp;

// Jump
if (keyboard_check_pressed(ord("W")) && (place_meeting(x, y + 1, obj_block) || place_meeting(x, y + 1, obj_box))) {
    vspeed = jump_height;
}

// Gravity
if (!place_meeting(x, y + 1, obj_block) && !place_meeting(x, y + 1, obj_box)) {
    gravity = 0.25;
} else {
    gravity = 0;
}

// Vertical collision with walls and boxes
if (place_meeting(x, y + vspeed, obj_block) || place_meeting(x, y + vspeed, obj_box)) {
    while (!place_meeting(x, y + sign(vspeed), obj_block) && !place_meeting(x, y + sign(vspeed), obj_box)) {
        y += sign(vspeed);
    }
    vspeed = 0;
}
y += vspeed;

// Attack start
if (keyboard_check_pressed(ord("S")) && !attack) {
    instance_create_layer(x, y, "Instances", obj_attackRange);
    attack = true;
}

if (damage_cooldown > 0) {
    damage_cooldown--;
}

if (instance_exists(obj_noteUI)) {
    exit;
}

if (walk_particle_timer > 0) {
    walk_particle_timer--;
}