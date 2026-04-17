// Only care about left/right pushing
if (other.push_dir == 0) exit;

var dir = sign(other.push_dir);

// If player is standing on top of the box, do not side-push it
if (other.bbox_bottom <= bbox_top + 2 && other.vspeed >= 0) {
    exit;
}

// Make sure the player is actually on the side they are pushing from
if (dir > 0 && other.x >= x) exit;
if (dir < 0 && other.x <= x) exit;

// Check whether box can move
var hit_block = place_meeting(x + dir, y, obj_block);
var hit_box = instance_place(x + dir, y, obj_box);

if (hit_box == id) hit_box = noone;

// If box can move, push it
if (!hit_block && hit_box == noone) {
    x += dir;
}
else {
    // Box cannot move, so keep player outside the box
    if (dir > 0) {
        other.x = bbox_left - (other.bbox_right - other.x);
    } else {
        other.x = bbox_right + (other.x - other.bbox_left);
    }
}