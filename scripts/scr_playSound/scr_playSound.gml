var _sound = argument[0];
var _loops = argument[1];

if (audio_is_playing(_sound)){audio_stop_sound(_sound);}

var _snd = audio_play_sound_on(global.SEEmitter, _sound, _loops, 8);

return _snd;