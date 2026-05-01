draw_self();

var player_near = false;

if (instance_exists(obj_player)) {
    if (point_distance(x, y, obj_player.x, obj_player.y) < 128) {
        player_near = true;
    }
}

if (player_near) {
    draw_set_font(fnt_ui_1); // optional
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);

    draw_text(x, y - sprite_height / 2, "Click to Choose this Mannequin");

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}