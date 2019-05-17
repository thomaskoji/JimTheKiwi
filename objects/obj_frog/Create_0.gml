event_inherited();
state = obstacleStates.wait;
state_new = false;
velocity[YAXIS] = 0;
velocity[XAXIS] = 0;
jumpHeight = 2.8;
grav = .2;
startY = y;