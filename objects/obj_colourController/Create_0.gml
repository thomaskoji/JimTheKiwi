event_inherited();

global.playerColour			= make_color_rgb(141, 110, 99);
global.firstColour			= make_color_rgb(253, 230, 220);
global.secondColour			= make_color_rgb(196, 200, 225);
global.thirdColour			= make_color_rgb(83, 161, 209);
global.fourthColour			= make_color_rgb(0, 112, 161);
global.fifthColour			= make_color_rgb(11, 76, 161);
global.sixthColour			= make_color_rgb(26, 51, 56);
global.debugColour			= make_color_rgb(83,161,209);
global.mainMenuTextColour	= make_color_rgb(30,30,30);

colourGrid = ds_grid_create(6,0);
global.currentColourSet = 0;

scr_addColourSet($ffd4c1, $fde6dc, $c4c8e1, $53a1d1, $0070a1, $0b4c65);
scr_addColourSet($acd788, $8dc47b, $5a955c, $366f5f, $08515f, $07405c);
