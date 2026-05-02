audio_play_sound(hittingenemy, 1, false);

if (other.destroy_buffer <= 0)
{
    global.player_score += 5
	instance_destroy(other);
}