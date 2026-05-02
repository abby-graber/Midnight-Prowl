var target = instance_nearest(x, y, obj_player);

if (target != noone)
{
    var dist_to_player = point_distance(x, y, target.x, target.y);

    // Check if player is close enough to see
    if (dist_to_player < view_distance && !collision_line(x, y, target.x, target.y, obj_block, false, true))
    {
        state = "run";
    }
    else
    {
        state = "wander";
    }
}

// --------------------
// KNOCKBACK
// --------------------
if (abs(knockback_hsp) > 0.1 || abs(knockback_vsp) > 0.1)
{
    move_and_collide(knockback_hsp, knockback_vsp, obj_block);

    knockback_hsp *= knockback_decay;
    knockback_vsp *= knockback_decay;

    exit; // prevents ghost from chasing during knockback
}
else
{
    knockback_hsp = 0;
    knockback_vsp = 0;
}

if (state == "run")
{
    var dir_to_player = point_direction(x, y, target.x, target.y);

    var hsp = lengthdir_x(run_speed, dir_to_player);
    var vsp = lengthdir_y(run_speed, dir_to_player);

    move_and_collide(hsp, vsp, obj_block);
}

// --------------------
// WANDER RANDOMLY
// --------------------
else if (state == "wander")
{
    wander_timer--;

    if (wander_timer <= 0)
    {
        wander_dir = irandom(359);
        wander_timer = irandom_range(30, 90);
    }

    var hsp = lengthdir_x(move_speed, wander_dir);
    var vsp = lengthdir_y(move_speed, wander_dir);

    if (place_meeting(x + hsp, y, obj_block))
    {
        wander_dir = irandom(359);
        hsp = 0;
    }

    if (place_meeting(x, y + vsp, obj_block))
    {
        wander_dir = irandom(359);
        vsp = 0;
    }

    x += hsp;
    y += vsp;
}

// Death check
if (hp <= 0)
{
    instance_destroy();
}

if (enemy_flash_timer > 0) {
    enemy_flash_timer--;
}
