/// @description ground spawner
if(global.gameHasNotStarted == false)
{
	var _obstacleType = choose(obj_kangaroo, obj_tree);
	instance_create_layer(room_width + 16, room_height - global.baseY,"obstacles", _obstacleType);
}

	//randomizing the seed
	randomize();
	// randomizing when the new obstacle spawnes
	alarm[0] = room_speed * random_range(1/global.spawnFrequency, 3/global.spawnFrequency);