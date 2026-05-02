instance_destroy(other)
global.gflash_timer = global.gflash_duration;

if (hp < 100) {
	hp += 10
} else {
	global.player_score += 10
}
audio_play_sound(cateating, 1, false);
instance_destroy(other);