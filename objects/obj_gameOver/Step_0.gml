var centerX = 688;
var titleY = 384;

draw_set_font(fnt_ui);

var buttonText = "Return to Start";
var buttonY = titleY + 100;

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

var button_w = string_width(buttonText);
var button_h = string_height(buttonText);

var button_left   = centerX - button_w / 2;
var button_right  = centerX + button_w / 2;
var button_top    = buttonY - button_h / 2;
var button_bottom = buttonY + button_h / 2;

if (mouse_check_button_pressed(mb_left)) {
    if (mx >= button_left && mx <= button_right && my >= button_top && my <= button_bottom) {
        room_goto(rm_startScreen);
    }
}