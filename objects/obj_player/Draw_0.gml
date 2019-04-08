image_blend = global.playerColour;
draw_self();

draw_set_halign(fa_left);
draw_set_valign(fa_middle);

var _stateName = "";

switch state
{
	case playerStates.wait:
		_stateName = "Wait";
		break;
	
	case playerStates.jump:
		_stateName = "Jump";
		break;
	
	case playerStates.duck:
		_stateName = "duck";
		break;
}

if ( global.debugMode )
{
	draw_set_color(c_black);
	draw_set_font(fnt_debug);
	draw_text(x - 20,y + 15, _stateName);
	var _debugText = "";
	_debugText = "Xsp:" + string(velocity[XAXIS]);
	_debugText = "Ysp:" + string(velocity[YAXIS]);
	draw_text(x - 20,y + 30, _debugText);
}