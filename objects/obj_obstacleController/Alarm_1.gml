/// @description cloud spawner

var _cloudYRange = random_range(global.cloudYmax, global.cloudYmin);
var _cloud = instance_create_layer(room_width + 16, _cloudYRange,"obstacles", obj_cloud);

// randomizing when the new obstacle spawnes
alarm[1] = room_speed * random_range(1/global.spawnFrequency, 3/global.spawnFrequency);