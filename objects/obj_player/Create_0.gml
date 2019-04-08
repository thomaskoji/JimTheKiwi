startY = y;

state = playerStates.wait;
state_new = true;
doubleJumped = false;

jumpHeight = 2.2;
jumpReleaseMod = 0.6;
extraFallSpeed = 1.2;

velocity[YAXIS] = 0;
velocity[XAXIS] = 0;

//state variables
jumpApexHoldTimer = 4;