var guiW = display_get_gui_width();
var guiH = display_get_gui_height();

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

var centerX = guiW / 2;

var gameStartText = "Game Start";
var tutorialText = "Tutorial";
var titleText = "Press Start Productions";

var y_game = 300;
var y_tutorial = 375;
var y_title = 650;

// Align text from center
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// --------------------
// GAME START BUTTON
// --------------------
draw_set_font(fnt_ui);

var game_w = string_width(gameStartText);
var game_h = string_height(gameStartText);

var game_left   = centerX - game_w / 2;
var game_right  = centerX + game_w / 2;
var game_top    = y_game - game_h / 2;
var game_bottom = y_game + game_h / 2;

if (mx >= game_left && mx <= game_right && my >= game_top && my <= game_bottom)
{
    draw_set_color($FF49FF);
}
else
{
    draw_set_color(c_white);
}

draw_text(centerX, y_game, gameStartText);

// --------------------
// TUTORIAL BUTTON
// --------------------
var tutorial_w = string_width(tutorialText);
var tutorial_h = string_height(tutorialText);

var tutorial_left   = centerX - tutorial_w / 2;
var tutorial_right  = centerX + tutorial_w / 2;
var tutorial_top    = y_tutorial - tutorial_h / 2;
var tutorial_bottom = y_tutorial + tutorial_h / 2;

if (mx >= tutorial_left && mx <= tutorial_right && my >= tutorial_top && my <= tutorial_bottom)
{
    draw_set_color($FF49FF);
}
else
{
    draw_set_color(c_white);
}

draw_text(centerX, y_tutorial, tutorialText);

// --------------------
// TITLE TEXT
// --------------------
draw_set_font(fnt_title);
draw_set_color(c_white);
draw_text(centerX, y_title, titleText);

// Reset draw settings afterward
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);