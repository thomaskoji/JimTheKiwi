/*
	because surfaces are volatile, meaning that they might get destroyed when focus is lost or minimized,
	we have to keep checking if it exists and create it if it doesn't
*/
if(!surface_exists(shadowSurface)){
	shadowSurface = surface_create(384, 216);
}

/*	
	Subtracting this from all the cordinates because the drawing surface is always going to be at top left
	So this allows the shadows to be moved to where it's supposed to be
*/
var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);

//	changing the canvas that it's gonna be drawn
surface_set_target(shadowSurface);

//	this draws 0 opacity black pixels all over the screen and serves as clearing the whole canvas 
draw_clear_alpha(c_black,0);

//	These are the shadows top 2 cordinate's location
var sx = global.skewX;
var sy = global.shadowHeight;

//	making the shadows compleatly black
gpu_set_fog(true, global.secondaryColour, 0, 1);

with(obj_parent){
	draw_sprite_pos(sprite_index, image_index, 
		bbox_left-viewX-sx,bbox_top-viewY-sy, 
		bbox_right-viewX-sx, bbox_top-viewY-sy, 
		bbox_right-viewX, bbox_bottom-viewY, 
		bbox_left-viewX, bbox_bottom-viewY, 1);
}

//	resetting the gpu_set_fog
gpu_set_fog(false, c_white, 0, 0);

//	setting back the canvas to be drawn to the application surface
surface_reset_target();

//	setting all the drawn shadows to become 0.5 opacity
draw_set_alpha(0.5);

//	rawing the shadow surface
draw_surface(shadowSurface, viewX, viewY);

// resetting the opacity
draw_set_alpha(1);