/// @description cloud spawner

var cloudYRange = random_range(global.cloudYmax, global.cloudYmin);
var obstacle = instance_create_layer(room_width + 16, cloudYRange,"obstacles", obj_obstacle);
obstacle.sprite_index = spr_cloud;

// randomizing when the new obstacle spawnes
alarm[1] = room_speed * random_range(1/global.spawnFrequency, 3/global.spawnFrequency);