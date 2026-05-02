audio_play_sound(notes, 1, false);

if (!instance_exists(obj_noteUI)) {
    var ui = instance_create_layer(0, 0, "Instances", obj_noteUI);
    ui.note_text = note_text;
    ui.note_sprite = note_sprite;
}