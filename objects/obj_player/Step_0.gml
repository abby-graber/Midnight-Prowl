moving = false;
push_dir = 0;

// Horizontal movement
var hsp = 0;

if (keyboard_check(vk_left)) {
    hsp = -move_speed;
	
	if (place_meeting(x, y + 1, obj_block) && (walk_particle_timer <= 0)) {
		part_particles_burst(ps, x - 20, bbox_bottom - 5, ps_walk)
		walk_particle_timer = walk_particle_delay;
	}
	
    push_dir = -1;
    moving = true;
    image_xscale = -abs(image_xscale);
}

if (keyboard_check(vk_right)) {
    hsp = move_speed;
	
	if (place_meeting(x, y + 1, obj_block) && (walk_particle_timer <= 0)) {
		part_particles_burst(ps, x - 20, bbox_bottom - 5, ps_walk)
		walk_particle_timer = walk_particle_delay;
	}
	
    push_dir = 1;
    moving = true;
    image_xscale = abs(image_xscale);
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
if (keyboard_check_pressed(vk_up) && (place_meeting(x, y + 1, obj_block) || place_meeting(x, y + 1, obj_box))) {
    audio_play_sound(catjump, 1, false);
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
if (keyboard_check_pressed(vk_space) && !attack) {
	audio_play_sound(tailswoosh, 1, false);
    instance_create_layer(x, y, "Instances", obj_attackRange);
    attack = true;
    sprite_index = spr_catAttack;
    image_index = 0;
}

// Animation/state logic
if (attack) {
    if (sprite_index != spr_catAttack) {
        sprite_index = spr_catAttack;
        image_index = 0;
    }

    if (image_index >= image_number - 1) {
        attack = false;
    }
}
else {
    if (moving) {
        if (sprite_index != spr_catWalk) {
            sprite_index = spr_catWalk;
            image_index = 0;
        }
    }
    else {
        if (sprite_index != spr_player) {
            sprite_index = spr_player;
            image_index = 0;
        }
    }
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

if (global.gflash_timer > 0) {
    global.gflash_timer--;
}

if (global.flash_timer > 0) {
    global.flash_timer--;
}