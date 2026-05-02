instance_destroy(other)
global.gflash_timer = global.gflash_duration;

if (hp < 100) {
	hp += 10
} else {
	global.player_score += 10
}

if (room == rm_level2) {
	if (!instance_exists(obj_fish)) {
		var note = instance_create_layer(x, y, "Instances", obj_note);
		
		note.note_text = "I always wanted to dye my hair but...\nMy hair's too dark and I never wanted to bleach it."

		note.x = obj_player.x + 50;
		note.y = obj_player.y;
	}
}