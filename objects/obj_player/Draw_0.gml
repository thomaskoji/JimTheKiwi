
draw_sprite_ext(currentSprite, image_index, x, y, Yscale, Xscale, 0, scr_getColour(0), 1);

if global.debugMode == true
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(x, y + 8, state);
}