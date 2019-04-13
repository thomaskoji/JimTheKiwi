image_blend = global.secondaryColour;
draw_self();

if (sprite_index = spr_cloud and global.debugMode)
{
	draw_set_color(c_black);
	draw_set_font(fnt_debug);
	var _debugText = "";
	_debugText = "Y = " + string(y);
	draw_text(x + 10, y, _debugText);
}