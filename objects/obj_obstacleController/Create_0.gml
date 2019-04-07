// Inherit the parent event
event_inherited();

global.runSpeed = 0.4;
global.spawnFrequency = 1;
global.baseY = 35 ;
global.firstSpawnTimer = 1.5;

global.cloudSpawnYmax = 40;
global.cloudSpawnYmin = 10;

obstacles = 0;
clouds = 1;

 alarm[obstacles] = global.firstSpawnTimer;
 alarm[clouds] = random_range(global.cloudSpawnYmax, global.cloudSpawnYmin);