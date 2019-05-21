/// @description Adds colour to the colour ds
/// @param Colour1
/// @param Colour2
/// @param Colour3
/// @param Colour4
/// @param Colour5
/// @param Colour6
var _ds = colourGrid;
ds_grid_resize(_ds,ds_grid_width(_ds),ds_grid_height(_ds)+1);
var _dsHeight = ds_grid_height(_ds) - 1;
ds_grid_set(_ds, 0,_dsHeight,argument0);
ds_grid_set(_ds, 1,_dsHeight,argument1);
ds_grid_set(_ds, 2,_dsHeight,argument2);
ds_grid_set(_ds, 3,_dsHeight,argument3);
ds_grid_set(_ds, 4,_dsHeight,argument4);
ds_grid_set(_ds, 5,_dsHeight,argument5);


/*
colourGrid[# 0, _dsHeight] = argument0;
colourGrid[# 1, _dsHeight] = argument1;
colourGrid[# 2, _dsHeight] = argument2;
colourGrid[# 3, _dsHeight] = argument3;
colourGrid[# 4, _dsHeight] = argument4;
colourGrid[# 5, _dsHeight] = argument5;
