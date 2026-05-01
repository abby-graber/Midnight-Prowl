draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(fnt_title);

var centerX = 688;
var titleY = 625;

draw_set_color(c_white);
draw_text(centerX, titleY, "End");

// Button
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

if (mx >= button_left && mx <= button_right && my >= button_top && my <= button_bottom) {
    draw_set_color($FF49FF);
} else {
    draw_set_color(c_white);
}

draw_text(centerX, buttonY, buttonText);

draw_set_halign(fa_left);
draw_set_valign(fa_top);