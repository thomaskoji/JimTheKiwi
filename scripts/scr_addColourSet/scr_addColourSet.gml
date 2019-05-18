/// @description Adds colour to the colour ds
/// @param Colour1
/// @param Colour2
/// @param Colour3
/// @param Colour4
/// @param Colour5
/// @param Colour6

var _dsHeight = ds_grid_height(colourGrid)
ds_grid_resize(colourGrid,ds_grid_width(colourGrid),ds_grid_height(colourGrid)+1);
ds_grid_set(colourGrid, _dsHeight + 1, 0, argument0);
ds_grid_set(colourGrid, _dsHeight + 1, 1, argument1);
ds_grid_set(colourGrid, _dsHeight + 1, 2, argument2);
ds_grid_set(colourGrid, _dsHeight + 1, 3, argument3);
ds_grid_set(colourGrid, _dsHeight + 1, 4, argument4);
ds_grid_set(colourGrid, _dsHeight + 1, 5, argument5);
