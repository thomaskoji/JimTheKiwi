/// @description ground spawner

var _chance = random_range(0,100);

if(!global.gameHasNotStarted)
{
	var _obstacleType = choose(obj_kangaroo, obj_tree, obj_frog, obj_questionBlock, obj_flappyBirdPipe, obj_flappyBirdPipeDown);
	instance_create_layer(room_width + 16, room_height - global.baseY,"obstacles", _obstacleType);
}

	//randomizing the seed
	randomize();
	alarm[0] = room_speed * random_range(.8/global.spawnFrequency, 1/global.spawnFrequency);