if (global.gflash_timer > 0) {

    shader_set(sh_green_flash);

    var t = 1 - (global.gflash_timer / global.gflash_duration);
    var u_time = shader_get_uniform(sh_green_flash, "u_time");
    shader_set_uniform_f(u_time, t);

    draw_self();
    shader_reset();

} else if (global.flash_timer > 0) {

    var flash_amount = global.flash_timer / global.flash_duration;

    shader_set(sh_player_damage);

    var u = shader_get_uniform(sh_player_damage, "u_flash");
    shader_set_uniform_f(u, flash_amount);

    draw_self();
    shader_reset();

} else {
    draw_self();
}