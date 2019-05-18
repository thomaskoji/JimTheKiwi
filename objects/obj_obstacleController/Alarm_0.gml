/// @description ground spawner

var _chance = random_range(0,100);
if not global.gameOver
{
	if(!global.gameHasNotStarted and _chance > 5)
	{
		var _obstacleType = choose(obj_kangaroo, obj_tree, obj_frog, obj_flappyBirdPipe, obj_flappyBirdPipeDown, obj_togetoge);
		instance_create_layer(room_width + 16, room_height - global.baseY,"obstacles", _obstacleType);
	}
	else
	{
		instance_create_layer(room_width + 16, room_height - global.baseY,"obstacles", obj_questionBlock);
	}
}

	//randomizing the seed
	randomize();
	alarm[0] = room_speed * random_range(.8/global.spawnFrequency, 1/global.spawnFrequency);