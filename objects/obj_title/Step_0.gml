var guiW = display_get_gui_width();
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

var centerX = guiW / 2;

draw_set_font(fnt_ui);

var gameStartText = "Game Start";
var tutorialText = "Tutorial";

var y_game = 300;
var y_tutorial = 375;

var game_w = string_width(gameStartText);
var game_h = string_height(gameStartText);

var tutorial_w = string_width(tutorialText);
var tutorial_h = string_height(tutorialText);

var game_left   = centerX - game_w / 2;
var game_right  = centerX + game_w / 2;
var game_top    = y_game - game_h / 2;
var game_bottom = y_game + game_h / 2;

var tutorial_left   = centerX - tutorial_w / 2;
var tutorial_right  = centerX + tutorial_w / 2;
var tutorial_top    = y_tutorial - tutorial_h / 2;
var tutorial_bottom = y_tutorial + tutorial_h / 2;

if (mouse_check_button_pressed(mb_left))
{
    if (mx >= game_left && mx <= game_right && my >= game_top && my <= game_bottom)
    {
        room_goto(rm_level1);
    }

    if (mx >= tutorial_left && mx <= tutorial_right && my >= tutorial_top && my <= tutorial_bottom)
    {
        room_goto(rm_tutorial);
    }
}