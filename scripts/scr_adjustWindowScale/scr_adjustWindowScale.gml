var _zoom = obj_displayController.zoom;
var _ideal_width = obj_displayController.ideal_width;
var _ideal_height = obj_displayController.ideal_height;


if (argument_count > 0)
{
	var _change = argument0;
}
else
{
	var _change = 0;
}
var _newZoom = _zoom + _change;

if(
_ideal_width * _newZoom <= display_get_width()
and _ideal_height * _newZoom <= display_get_height()
){
	_zoom = _newZoom;
	window_set_size(_ideal_width * _zoom, _ideal_height * _zoom);
	alarm[0] = 1;
}
else
{
	_zoom = 1;
	window_set_size(_ideal_width * _zoom, _ideal_height * _zoom);
	alarm[0] = 1;
}