if (room != rm_startScreen || room != rm_endScreen) {
	draw_set_font(fnt_ui);

	if (global.paused && surface_exists(global.pauseSurf)) {

	    draw_surface(global.pauseSurf, 0, 0);

	    var guiW = window_get_width();
	    var guiH = window_get_height();

	    var centerX = guiW / 2;

	    var restartText = "Restart Level";
	    var menuText = "Main Menu";

	    var y_restart = guiH / 2 + 60;
	    var y_menu = guiH / 2 + 120;

	    var mx = device_mouse_x_to_gui(0);
	    var my = device_mouse_y_to_gui(0);

	    // Overlay
	    draw_set_alpha(0.5);
	    draw_set_color(c_black);
	    draw_rectangle(0, 0, guiW, guiH, false);
	    draw_set_alpha(1);

	    draw_set_halign(fa_center);
	    draw_set_valign(fa_middle);

	    draw_set_color(c_yellow);
	    draw_text(centerX, guiH / 2 - 80, "PAUSED");

	    // -------------------------
	    // RESTART BUTTON (TEXT HOVER)
	    // -------------------------
	    var rw = string_width(restartText);
	    var rh = string_height(restartText);

	    var r_left   = centerX - rw / 2;
	    var r_right  = centerX + rw / 2;
	    var r_top    = y_restart - rh / 2;
	    var r_bottom = y_restart + rh / 2;

	    if (mx >= r_left && mx <= r_right && my >= r_top && my <= r_bottom) {
	        draw_set_color($FF49FF);
	    } else {
	        draw_set_color(c_white);
	    }

	    draw_text(centerX, y_restart, restartText);

	    // -------------------------
	    // MENU BUTTON (TEXT HOVER)
	    // -------------------------
	    var mw = string_width(menuText);
	    var mh = string_height(menuText);

	    var m_left   = centerX - mw / 2;
	    var m_right  = centerX + mw / 2;
	    var m_top    = y_menu - mh / 2;
	    var m_bottom = y_menu + mh / 2;

	    if (mx >= m_left && mx <= m_right && my >= m_top && my <= m_bottom) {
	        draw_set_color($FF49FF);
	    } else {
	        draw_set_color(c_white);
	    }

	    draw_text(centerX, y_menu, menuText);

	    draw_set_color(c_white);
	    draw_text(centerX, guiH / 2 - 30, "Press ALT+P to Resume");

	    draw_set_halign(fa_left);
	    draw_set_valign(fa_top);
	}
}