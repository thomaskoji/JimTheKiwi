/// @description ground spawner

var _chance = random_range(0,100);

if(!global.gameHasNotStarted and _chance > 30) // ← chance to spawn pipe
{
	var _obstacleType = choose(obj_kangaroo, obj_tree);
	instance_create_layer(room_width + 16, room_height - global.baseY,"obstacles", _obstacleType);
}
else if (_chance  > 10)
{
	instance_create_layer(room_width + 16, room_height - global.baseY,"obstacles", obj_flappyBirdPipeDown);
}
else
{
	instance_create_layer(room_width + 16, room_height - global.baseY,"obstacles", obj_flappyBirdPipe);
}

	//randomizing the seed
	randomize();
	alarm[0] = room_speed * random_range(1/global.spawnFrequency, 2/global.spawnFrequency);