image_blend = global.playerColour;
draw_self();

draw_set_halign(fa_left);
draw_set_valign(fa_middle);

var _stateName = "";

// converting state to string for debug mode
switch state
{
	#region state
	case playerStates.wait:
		_stateName = "Wait";
		break;
	
	case playerStates.jump:
		_stateName = "Jump";
		break;
	
	case playerStates.duck:
		_stateName = "duck";
		break;
	#endregion
}

if ( global.debugMode )
{
	#region debug mode
	draw_set_color(global.debugColour);
	draw_set_font(fnt_debug);
	draw_text(x - 10 ,y + 15, _stateName);
	var _debugText = "";
	_debugText = "Ysp:" + string(velocity[YAXIS]);
	draw_text(x - 10,y + 25, _debugText);
	#endregion
}