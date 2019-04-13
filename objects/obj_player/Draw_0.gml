
draw_sprite_ext(currentSprite, image_index, x, y, Yscale, Xscale, 0, global.playerColour, 1);

#region debug

	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);

	var _stateName = "";
	var _speed = "";
	var _imagespeed = "";
	var _XScale = "";
	var _YScale = "";

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
			draw_text(x-15 , y+13, _stateName);
			_speed = "Ysp:" + string(velocity[YAXIS]);
			draw_text(x-15, y+20, _speed);
			_imagespeed = "img spd: " + string(image_speed);
			draw_text(x-15, y+27, _imagespeed);
			_XScale = "X scale: " + string(Xscale);
			_YScale = "Y scale : " + string(Yscale);
			draw_text(x-15, y+34, _XScale);
			draw_text(x-15, y+41, _YScale);
		#endregion
	}

#endregion