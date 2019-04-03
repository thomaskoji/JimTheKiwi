draw_self();

draw_set_halign(fa_center);
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
	
}

draw_text(x,y + 25, _stateName);