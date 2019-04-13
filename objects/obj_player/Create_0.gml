startY = y;

currentSprite = spr_kiwiWalk;

state = playerStates.wait;
state_new = true;
previousState = playerStates.wait;
doubleJumped = false;

grav = .2;
jumpHeight = 3;
jumpReleaseMod = 0.7;
extraFallSpeed = 1.2; // when down is held

Yscale = 1;
Xscale = 1;

squishedScale = .4;
extendedScale = 1.3;
squishBackMod = 1.1;
extendBackMod = .96;

velocity[YAXIS] = 0;
velocity[XAXIS] = 0;

//state variables
jumpApexHoldTimer = 4;