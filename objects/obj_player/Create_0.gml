startY = y;

state = playerStates.wait;
state_new = true;

jumpHeight = 2.2;
jumpReleaseMod = 0.4;
extraFallSpeed = 1.2;

velocity[YAXIS] = 0;
velocity[XAXIS] = 0;

//state variables
jumpApexHoldTimer = 4;