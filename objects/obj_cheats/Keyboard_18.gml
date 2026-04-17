if (keyboard_check_pressed(ord("S"))) {
	room_restart()
}

if (keyboard_check_pressed(ord("G"))) {
	game_restart()
}

if (keyboard_check_pressed(ord("L"))) {
	global.player_lives += 5
}

if (keyboard_check_pressed(ord("N"))) {
	room_goto_next()
}

if (keyboard_check_pressed(ord("B"))) {
	room_goto_previous()
}

if (keyboard_check_pressed(ord("F"))) {
	if window_get_fullscreen()
		window_set_fullscreen(false);
	else
		window_set_fullscreen(true);
}