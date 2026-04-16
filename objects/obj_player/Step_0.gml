moving = false;

// Movement
if (keyboard_check(vk_left) && !instance_place(x - move_speed, y, obj_block)) {
    x -= move_speed;
    moving = true;
    image_xscale = -abs(image_xscale);
}

if (keyboard_check(vk_right) && !instance_place(x + move_speed, y, obj_block)) {
    x += move_speed;
    moving = true;
    image_xscale = abs(image_xscale);
}

// Jump
if (keyboard_check(vk_up)) {
    if (instance_place(x, y + 1, obj_block)) {
        vspeed = jump_height;
    }
}

// Gravity
if (instance_place(x, y + 1, obj_block)) {
    gravity = 0;
} else {
    gravity = 0.25;
}

// Attack start
if (keyboard_check_pressed(vk_space) && !attack) {
    instance_create_layer(x, y, "Instances", obj_attackRange);
    attack = true;
    sprite_index = spr_catAttack;
    image_index = 0;
}

// Animation/state logic
if (attack) {
    // stay in attack until animation finishes
    if (sprite_index != spr_catAttack) {
        sprite_index = spr_catAttack;
        image_index = 0;
    }

    if (image_index >= image_number - 1) {
        attack = false;
    }
} else {
    if (moving) {
        if (sprite_index != spr_catWalk) {
            sprite_index = spr_catWalk;
            image_index = 0;
        }
    } else {
        if (sprite_index != spr_player) {
            sprite_index = spr_player;
            image_index = 0;
        }
    }
}