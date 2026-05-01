if (!global.spawned_table_mouse) {
    var m = instance_create_layer(x, y, "Instances", obj_mouse);
    m.mouse_text = "Click the table to shake out the key...";

    global.spawned_table_mouse = true;
}