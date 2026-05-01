global.startLevel = false;
global.paused = false;
global.pauseSurf = -1;

global.game_over = false
global.player_score = 0
global.room_start_score = 0

global.level1_story_done = false
global.level2_story_done = false
global.level3_story_done = false

// start paused
global.startLevel = false

if (room == rm_tutorial) {
	global.room_start_score = global.player_score
}
else if (room == rm_level1) {
	global.room_start_score = global.player_score
}
else if (room == rm_level2) {
	global.room_start_score = global.player_score
}
else if (room == rm_level3) {
	global.room_start_score = global.player_score
}
