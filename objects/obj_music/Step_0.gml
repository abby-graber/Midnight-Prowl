if (current_room != room) {
    audio_stop_all();
    
    if (room == rm_startScreen || room == rm_endScreen || room == rm_tutorial) {
        audio_play_sound(snd_opening, 1, true);
    } else if (room == rm_level1) {
        audio_play_sound(snd_level1, 1, true);
    } else if (room == rm_level2) {
        audio_play_sound(snd_level2, 1, true);
    } else if (room == rm_level3) {
        audio_play_sound(snd_level3, 1, true);
    } else if (room == rm_gameOver) {
		audio_play_sound(snd_womp_womp, 1, false);
	}
    
    current_room = room;
}