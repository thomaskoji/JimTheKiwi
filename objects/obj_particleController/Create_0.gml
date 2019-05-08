 event_inherited();

global.psShallow = part_system_create();
part_system_depth(global.psShallow, -100);

global.psDeep = part_system_create();
part_system_depth(global.psDeep, 100);

global.jumpSmokeParticle = part_type_create();
var _part = global.jumpSmokeParticle;
part_type_sprite(_part, spr_jumpSmokeParticle, true, true, false);
part_type_alpha2(_part, 1, 0);
part_type_life(_part, 10, 15);
part_type_direction(_part, 75, 85, 0, .5);
part_type_speed(_part, .5, 1, -.01, 0);
part_type_blend(_part,true);