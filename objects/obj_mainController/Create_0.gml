// Inherit the parent event
event_inherited();

// Instantiate controll object
instance_create_depth(0,0,0, obj_inputController);
instance_create_depth(0,0,0, obj_displayController);
instance_create_depth(0,0,0, obj_obstacleController);
instance_create_depth(0,0,0, obj_colourController);
instance_create_depth(0,0,0, obj_hudController);
instance_create_depth(0,0,0, obj_cameraController);
instance_create_depth(0,0,0, obj_particleController);
room_goto(rm_gameRoom);

global.gameOver				= false;
global.gameRestart			= false;
global.gameHasNotStarted	= true;