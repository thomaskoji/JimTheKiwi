// Inherit the parent event
event_inherited();

// Instantiate controll object
instance_create_depth(0,0,0, obj_inputController);
instance_create_depth(0,0,0, obj_displayController);
// old controller i used to use for randomly spawning objects
//instance_create_depth(0,0,0, obj_obstacleController);
instance_create_depth(0,0,0, obj_colourController);
instance_create_depth(0,0,0, obj_guiController);
instance_create_depth(0,0,0, obj_camera);
room_goto(rm_gameRoom);