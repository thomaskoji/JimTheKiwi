scr_stateMachineCreate();
scr_stateAdd("wait", player_state_wait);
scr_stateAdd("jump", player_state_jump);
scr_stateAdd("duck", player_state_duck);
scr_stateAdd("gameover", player_state_gameover);
scr_stateBeginIn("wait");

startY = y;

currentSprite = spr_kiwiWalk;
doubleJumped = false;

grav = .2;
jumpHeight = 3.5;
jumpReleaseMod = 0.7;
extraFallSpeed = 1.2; // when down is held

Yscale = 1;
Xscale = 1;

squishedScale = .6;
extendedScale = 1.2;
squishBackMod = 1.1;
extendBackMod = .96;

velocity[YAXIS] = 0;
velocity[XAXIS] = 0;

//state variables
jumpApexHoldTimer = 4;