if instance_exists(obj_player) {
	draw_healthbar(8,8,256,32,obj_player.hp,c_black,c_red,c_lime,0,true,true)
}

draw_set_font(fnt_ui)
draw_set_color(c_white)

draw_set_halign(fa_right)
draw_text(1300, 30, "Score: " + string(global.player_score))