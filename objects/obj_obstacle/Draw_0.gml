draw_self();

if (sprite_index = spr_PH_cloud and global.debugMode)
{
	draw_set_color(c_black);
	draw_set_font(debugFont);
	var _debugText = "";
	_debugText = "Y = " + string(y);
	draw_text(x + 10, y, _debugText);
}