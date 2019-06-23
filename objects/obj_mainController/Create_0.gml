// Inherit the parent event
event_inherited();

global.gameOver				= false;
global.gameRestart			= false;
global.gameHasNotStarted	= true;

// Instantiate controll object
instance_create_depth(0,0,0, obj_inputController);
instance_create_depth(0,0,0, obj_displayController);
instance_create_depth(0,0,0, obj_colourController);
instance_create_depth(0,0,0, obj_hudController);
instance_create_depth(0,0,0, obj_soundController);
room_goto(rm_menu);