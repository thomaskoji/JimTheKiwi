/// @description cloud spawner

var _cloudY = random_range(global.cloudYmax, global.cloudYmin);
var _cloud = instance_create_layer(room_width + 16, _cloudY,"obstacles", obj_cloud);

_cloud.image_xscale = random_range(1,2);
_cloud.image_yscale = _cloud.image_xscale;

// randomizing when the new obstacle spawnes
alarm[1] = room_speed * random_range(1/global.spawnFrequency, 3/global.spawnFrequency);