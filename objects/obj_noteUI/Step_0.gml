if (!showing) exit;

// Close with Escape
if (keyboard_check_pressed(vk_escape)) {
    instance_destroy();
}

// Close by clicking X
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

var close_x1 = panel_x + panel_w - close_padding - close_size;
var close_y1 = panel_y + close_padding;
var close_x2 = close_x1 + close_size;
var close_y2 = close_y1 + close_size;

if (mouse_check_button_pressed(mb_left)) {
    if (mx >= close_x1 && mx <= close_x2 && my >= close_y1 && my <= close_y2) {
        instance_destroy();
    }
}