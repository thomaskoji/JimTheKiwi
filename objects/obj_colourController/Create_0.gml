event_inherited();

colourGrid = ds_grid_create(3,0);
global.currentColourSet = 0;
global.colourSetChangeTimer = 300;

scr_addColourSet($EBF1FF, $F2E9D6, $F9E0AC);
scr_addColourSet($dce6fd, $c1d4ff, $e1c8c4);
scr_addColourSet($e6c69c, $acceee, $738da4);
scr_addColourSet($504246, $3e3038, $7978bc);


alarm[0] = global.colourSetChangeTimer;