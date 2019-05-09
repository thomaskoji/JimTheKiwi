// Inherit the parent event
event_inherited();

global.runSpeed = 1.5;
global.spawnFrequency = 2;
global.baseY = 35 ;
global.firstSpawnTimer = .5;

global.cloudSpawnMax = 40;
global.cloudSpawnMin = 10;

global.cloudYmax = 40;
global.cloudYmin = 10;

obstacles = 0;
clouds = 1;


 alarm[obstacles] = global.firstSpawnTimer;
 alarm[clouds] = random_range(global.cloudSpawnMax, global.cloudSpawnMin);