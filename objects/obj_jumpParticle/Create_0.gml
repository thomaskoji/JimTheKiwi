// Initializing particle system, sort of like a room for the game
ps = part_system_create();
pe = part_emitter_create(ps);
pt = part_type_create();

var _xmin = -8;
var _xmax = 3;
var _ymin = 5;
var _ymax = 10;
var _lt   = .2; // lifetime
var _grav = 0.04;
var _num  = 30; // quantities
var _rm   = 10; // quantity modifier for randomizer

part_emitter_region(ps, pe, obj_player.x+_xmin, obj_player.x+_xmax, obj_player.y+_ymin,obj_player.y+_ymax, ps_shape_ellipse, ps_distr_gaussian);
part_type_alpha2(pt, 1, 0);
//part_type_color1(pt, global.secondaryColour);
part_type_life(pt, 0, room_speed*_lt);
part_type_gravity(pt, _grav, 90);
part_type_blend(pt,true);
part_emitter_burst(ps,pe,pt, _num + irandom(_rm));