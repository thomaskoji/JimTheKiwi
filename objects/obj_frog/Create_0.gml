event_inherited();
state = obstacleStates.wait;
state_new = false;
velocity[YAXIS] = 0;
velocity[XAXIS] = 0;
jumpHeight = 2;
grav = .1;
startY = y;

jumpTriggerPoint = 40;