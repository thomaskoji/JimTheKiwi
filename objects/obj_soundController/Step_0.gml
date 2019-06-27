
if (global.gameOver and !soundPlayed)
{
	if (!audio_is_playing(snd_gameover))
	{
		audio_play_sound_on(global.SEEmitter, snd_gameover, false, 8);
		soundPlayed = true;
	}
}

if(keyboard_check_pressed(ord("R")))
{
	soundPlayed = false;
}