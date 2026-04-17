function inflict_damage(damage) {
    if (obj_player.damage_cooldown > 0) return;

    obj_player.hp -= damage;
    obj_player.damage_cooldown = obj_player.damage_delay;

    if (obj_player.hp <= 0) {
        instance_destroy(obj_player);
    }
}