if (enemy_flash_timer > 0) {

    var flash_amount = enemy_flash_timer / enemy_flash_duration;

    shader_set(sh_enemy_damage);

    var u = shader_get_uniform(sh_enemy_damage, "u_flash");
    shader_set_uniform_f(u, flash_amount);

    draw_self();
    shader_reset();

} else {
    draw_self();
}