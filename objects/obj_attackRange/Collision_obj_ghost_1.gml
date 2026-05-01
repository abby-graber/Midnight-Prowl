global.enemy_flash_timer = global.enemy_flash_duration;

global.player_score += 8

var dir = point_direction(x, y, other.x, other.y);

var kb = 20;

other.knockback_hsp = lengthdir_x(kb, dir);
other.knockback_vsp = lengthdir_y(kb, dir);

other.hp -= 1;