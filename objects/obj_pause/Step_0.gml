// obj_pause Step

// Toggle pause with ALT + P
if (keyboard_check(vk_alt) && keyboard_check_pressed(ord("P"))) {
    global.paused = !global.paused;
    
    if (global.paused) {
        if (surface_exists(global.pauseSurf)) {
            surface_free(global.pauseSurf);
        }

        var guiW = window_get_width();
        var guiH = window_get_height();

        global.pauseSurf = surface_create(guiW, guiH);

        surface_set_target(global.pauseSurf);
        draw_surface(application_surface, 0, 0);
        surface_reset_target();

        instance_deactivate_all(true);
        instance_activate_object(obj_pause);
    } 
    else {
        instance_activate_all();

        if (surface_exists(global.pauseSurf)) {
            surface_free(global.pauseSurf);
            global.pauseSurf = -1;
        }
    }
}

// Pause menu text buttons
if (global.paused) {
    var guiW = window_get_width();
    var guiH = window_get_height();

    var centerX = guiW / 2;

    var restartText = "Restart Level";
    var menuText = "Main Menu";

    var y_restart = guiH / 2 + 60;
    var y_menu = guiH / 2 + 120;

    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);

    if (mouse_check_button_pressed(mb_left)) {

        // Restart Level button bounds
        var rw = string_width(restartText);
        var rh = string_height(restartText);

        var r_left   = centerX - rw / 2;
        var r_right  = centerX + rw / 2;
        var r_top    = y_restart - rh / 2;
        var r_bottom = y_restart + rh / 2;

        if (mx >= r_left && mx <= r_right && my >= r_top && my <= r_bottom) {
            instance_activate_all();
            global.paused = false;

            if (surface_exists(global.pauseSurf)) {
                surface_free(global.pauseSurf);
                global.pauseSurf = -1;
            }

            room_restart();
        }

        // Main Menu button bounds
        var mw = string_width(menuText);
        var mh = string_height(menuText);

        var m_left   = centerX - mw / 2;
        var m_right  = centerX + mw / 2;
        var m_top    = y_menu - mh / 2;
        var m_bottom = y_menu + mh / 2;

        if (mx >= m_left && mx <= m_right && my >= m_top && my <= m_bottom) {
            instance_activate_all();
            global.paused = false;

            if (surface_exists(global.pauseSurf)) {
                surface_free(global.pauseSurf);
                global.pauseSurf = -1;
            }

            room_goto(rm_startScreen);
        }
    }
}