if (instance_exists(obj_noteUI)) {
    exit;
}

moving = false;

var hsp = 0;
var vsp = 0;

// Movement input
if (keyboard_check(vk_left)) {
    hsp = -move_speed;
    moving = true;
    image_xscale = -abs(image_xscale);
	
	if (place_meeting(x, y + 1, obj_block) && (walk_particle_timer <= 0)) {
		part_particles_burst(ps, x - 20, bbox_bottom - 5, ps_walk)
		walk_particle_timer = walk_particle_delay;
	}
}

if (keyboard_check(vk_right)) {
    hsp = move_speed;
    moving = true;
    image_xscale = abs(image_xscale);
	
	if (place_meeting(x, y + 1, obj_block) && (walk_particle_timer <= 0)) {
		part_particles_burst(ps, x - 20, bbox_bottom - 5, ps_walk)
		walk_particle_timer = walk_particle_delay;
	}
}
if (keyboard_check(vk_up)) {
    vsp = -move_speed;
    moving = true;
}


if (keyboard_check(vk_down)) {
    vsp = move_speed;
    moving = true;
}

// Prevent faster diagonal movement
if (hsp != 0 && vsp != 0) {
    hsp *= 0.7071;
    vsp *= 0.7071;
}

// -------------------------
// Horizontal movement / pushing
// -------------------------
if (hsp != 0) {
    show_debug_message("Trying horizontal move. hsp = " + string(hsp));

    var dir_h = sign(hsp);
    var box_h = instance_place(x + dir_h, y, obj_box);

    if (box_h != noone) {
        show_debug_message("Horizontal box detected.");

        var other_box_h = instance_place(box_h.x + dir_h, box_h.y, obj_box);

        if (other_box_h == box_h) {
            other_box_h = noone;
        }

        if (place_meeting(box_h.x + dir_h, box_h.y, obj_block)) {
            show_debug_message("Horizontal box blocked by wall.");
            hsp = 0;
        }
        else if (other_box_h != noone) {
            show_debug_message("Horizontal box blocked by another box.");
            hsp = 0;
        }
        else {
            show_debug_message("Box moves horizontally.");
            box_h.x += dir_h;
        }
    }
    else {
        show_debug_message("No horizontal box detected.");
    }

    if (place_meeting(x + hsp, y, obj_block) || place_meeting(x + hsp, y, obj_box)) {
        show_debug_message("Player blocked horizontally.");

        while (!place_meeting(x + dir_h, y, obj_block)
        && !place_meeting(x + dir_h, y, obj_box)) {
            x += dir_h;
        }

        hsp = 0;
    }

    x += hsp;
}

// -------------------------
// Vertical movement / pushing
// -------------------------
if (vsp != 0) {
    show_debug_message("Trying vertical move. vsp = " + string(vsp));

    var dir_v = sign(vsp);
    var box_v = instance_place(x, y + dir_v, obj_box);

    if (box_v != noone) {
        show_debug_message("Vertical box detected.");

        var other_box_v = instance_place(box_v.x, box_v.y + dir_v, obj_box);

        if (other_box_v == box_v) {
            other_box_v = noone;
        }

        if (place_meeting(box_v.x, box_v.y + dir_v, obj_block)) {
            show_debug_message("Vertical box blocked by wall.");
            vsp = 0;
        }
        else if (other_box_v != noone) {
            show_debug_message("Vertical box blocked by another box.");
            vsp = 0;
        }
        else {
            show_debug_message("Box moves vertically.");
            box_v.y += dir_v;
        }
    }
    else {
        show_debug_message("No vertical box detected.");
    }

    if (place_meeting(x, y + vsp, obj_block) || place_meeting(x, y + vsp, obj_box)) {
        show_debug_message("Player blocked vertically.");

        while (!place_meeting(x, y + dir_v, obj_block)
        && !place_meeting(x, y + dir_v, obj_box)) {
            y += dir_v;
        }

        vsp = 0;
    }

    y += vsp;
}

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

// Damage cooldown
if (damage_cooldown > 0) {
    damage_cooldown--;
}

if (walk_particle_timer > 0) {
    walk_particle_timer--;
}

if (global.gflash_timer > 0) {
    global.gflash_timer--;
}