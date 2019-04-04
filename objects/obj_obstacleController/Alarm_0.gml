//randomizing the seed
randomize();

// declaring a local int variable that is eather 1 or 2 randomly selected 
var count = irandom_range(1, 2);


// declaring a local variable that stores the spawned object???? I'm not sure 
var i = instance_create_layer(room_width + 16, room_height - global.baseY,"obstacles", obj_obstacle);

// randomly choosing what sprite the spawned object will have
i.sprite_index = choose(spr_PH_cloud, spr_PH_kangaroo, spr_PH_tree);

// switch statement used to tell what each sprite will do
// im not sure about how the first expression is working here
switch(i.sprite_index)
{
	//when the sprite was A, do B.
	case spr_PH_kangaroo:
	case spr_PH_tree:
	i.image_speed = 0;
	break;
	
	case spr_PH_cloud:
	i.y -= random_range(global.cloudSpawnYmax, global.cloudSpawnYmin);
	break;
	
	// if i want to make several spr of same thing, use this: 
	// i.image_index = irandom_range(0, sprite_get_number(i.sprite_index) - 1);
}

// randomizing when the new obstacle spawnes
alarm[0] = room_speed * random_range(1/global.spawnFrequency, 3/global.spawnFrequency);