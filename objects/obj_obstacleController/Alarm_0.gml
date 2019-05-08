/// @description ground spawner
if(!global.gameHasNotStarted)
{
	//randomizing the seed
	randomize();

	// declaring a local variable that stores the spawned object???? I'm not sure 

	var _obstacleType = choose(obj_kangaroo, obj_tree);
	var _obstacle = instance_create_layer(room_width + 16, room_height - global.baseY,"obstacles", _obstacleType);

	// randomizing when the new obstacle spawnes
	alarm[0] = room_speed * random_range(1/global.spawnFrequency, 3/global.spawnFrequency);
}