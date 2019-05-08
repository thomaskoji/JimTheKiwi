event_inherited();

global.psShallow = part_system_create();
part_system_depth(global.psShallow, -100);

global.psDeep = part_system_create();
part_system_depth(global.psDeep, 100);

global.jumpSmokeParticle = part_type_create();
var _part = global.jumpSmokeParticle;
part_type_alpha2(_part, 1, 0);
part_type_life(_part, 0, 60*.2);
part_type_gravity(_part, .04, 90);
part_type_blend(_part,true);