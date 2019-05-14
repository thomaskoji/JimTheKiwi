/// @description cloud spawner

var _cloudY = random_range(global.cloudYmin, global.cloudYmax);
var _cloudType = choose(spr_cloud1, spr_cloud2, spr_cloud3, spr_cloud4);
var _cloud = instance_create_layer(room_width + 16, _cloudY,"obstacles", obj_cloud);

_cloud.sprite_index = _cloudType;

// randomizing when the new obstacle spawnes
alarm[1] = room_speed * random_range(1/global.spawnFrequency, 3/global.spawnFrequency);