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

if (keyboard_check_pressed(ord("C"))) {
	var cam = view_camera[0];

	if (orig_cam_w == -1) {
        orig_cam_w = camera_get_view_width(cam);
        orig_cam_h = camera_get_view_height(cam);
    }

    if (!cam_resized) {
        // Resize camera to match viewport
        var vp_w = view_get_wport(0);
        var vp_h = view_get_hport(0);

        camera_set_view_size(cam, vp_w, vp_h);
        cam_resized = true;
    } else {
        // Restore original size
        camera_set_view_size(cam, orig_cam_w, orig_cam_h);
        cam_resized = false;
    }
}