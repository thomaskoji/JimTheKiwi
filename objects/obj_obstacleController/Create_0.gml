// Inherit the parent event
event_inherited();

global.runSpeed = 1.8;
global.runSpeedDefult = global.runSpeed;
global.spawnFrequency = 1.2;
global.baseY = 35 ;
global.firstSpawnTimer = 1;

global.cloudSpawnMax = 30;
global.cloudSpawnMin = 10;

global.cloudYmax = 20;
global.cloudYmin = -10;

obstacles = 0;
clouds = 1;


 alarm[obstacles] = global.firstSpawnTimer;
 alarm[clouds] = random_range(global.cloudSpawnMax, global.cloudSpawnMin);