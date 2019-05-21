/// @description Adds colour to the colour ds
/// @param Colour1
/// @param Colour2
/// @param Colour3
/// @param Colour4
/// @param Colour5
/// @param Colour6

var _ds = obj_colourController.colourGrid;
ds_grid_resize(_ds,ds_grid_width(_ds),ds_grid_height(_ds)+1);
var _dsHeight = ds_grid_height(_ds) - 1;
ds_grid_set(_ds, 0,_dsHeight,argument0);
ds_grid_set(_ds, 1,_dsHeight,argument1);
ds_grid_set(_ds, 2,_dsHeight,argument2);