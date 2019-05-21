event_inherited();
var _stateName = "";

switch state
{
	#region state
	case obstacleStates.wait:
		_stateName = "wait";
		break;
		
	case obstacleStates.attack:
		_stateName = "atck";
		break;
	#endregion
}

if ( global.debugMode )
{
	#region debug mode
	draw_set_color(global.debugColour);
	draw_set_font(fnt_debug);
	draw_text(x - 20,y + 15, _stateName);
	#endregion
	
	draw_line(x - triggerPointX, y, x, y);
}