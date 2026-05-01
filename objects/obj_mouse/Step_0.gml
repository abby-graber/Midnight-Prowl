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
// RUN AWAY FROM PLAYER
// --------------------
if (state == "run")
{
    var dir_away = point_direction(target.x, target.y, x, y);

    var hsp = lengthdir_x(run_speed, dir_away);
    var vsp = lengthdir_y(run_speed, dir_away);

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