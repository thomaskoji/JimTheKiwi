var _sound = argument[0];
var _loops = argument[1];
var _variance = argument[2];

if (audio_is_playing(_sound)){audio_stop_sound(_sound);}

var _snd = audio_play_sound_on(global.SEEmitter, _sound, _loops, 8);
audio_sound_pitch(_snd, 1 + random_range( -_variance, _variance));

return _snd;