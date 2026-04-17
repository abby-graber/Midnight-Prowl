var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

// Make note fill most of the window
panel_w = gui_w * 0.8;
panel_h = gui_h * 0.8;
panel_x = (gui_w - panel_w) * 0.5;
panel_y = (gui_h - panel_h) * 0.5;

// Darken background a little
draw_set_alpha(0.5);
draw_rectangle(0, 0, gui_w, gui_h, false);
draw_set_alpha(1);

// Draw note image
if (note_sprite != -1) {
    var sw = sprite_get_width(note_sprite);
    var sh = sprite_get_height(note_sprite);

    draw_sprite_stretched(note_sprite, 0, panel_x, panel_y, panel_w, panel_h);
} else {
    draw_rectangle(panel_x, panel_y, panel_x + panel_w, panel_y + panel_h, false);
}

draw_set_color(c_white);

// Draw close button box
var close_x = panel_x + panel_w - close_padding - close_size;
var close_y = panel_y + close_padding;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_rectangle(close_x, close_y, close_x + close_size, close_y + close_size, false);

draw_set_color(c_black);

draw_text(close_x + close_size * 0.5, close_y + close_size * 0.5, "X");

// Text area inside the note
var text_margin = 48;
var text_x = panel_x + text_margin;
var text_y = panel_y + 80;
var text_w = panel_w - text_margin * 2;
var line_sep = 32;

// --- MEASURE TEXT HEIGHT ---
var text_h = string_height_ext(note_text, line_sep, text_w);

// --- CENTER TEXT IN PANEL ---
var text_center_y = panel_y + panel_h * 0.5;
var draw_y = text_center_y - text_h * 0.5;

// --- DRAW TEXT CENTERED ---
draw_set_halign(fa_center);
draw_set_valign(fa_top);

var text_center_x = panel_x + panel_w * 0.5;

draw_text_ext(text_center_x, draw_y, note_text, line_sep, text_w);