audio_play_sound(hittingenemy, 1, false);

other.enemy_flash_timer = other.enemy_flash_duration;

global.player_score += 8

var dir = point_direction(x, y, other.x, other.y);

var kb = 20;

other.knockback_hsp = lengthdir_x(kb, dir);
other.knockback_vsp = lengthdir_y(kb, dir);

other.hp -= 1;