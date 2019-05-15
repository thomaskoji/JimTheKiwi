if (state_new)
{
	velocity[YAXIS] = -jumpHeight;
	jumpApexHoldTimer = 4;
	Yscale = squishedScale;
	Xscale = extendedScale;
	currentSprite = spr_kiwiJump;
				
	// spawn jump smoke particle
	repeat 6
	{
		var _xPlus = irandom_range(-6,0);
		var _yPlus = irandom_range(-2,2);
		part_particles_create(global.psShallow, x + _xPlus, bbox_bottom + _yPlus, global.jumpSmokeParticle, 1);
	}
}
		
if (global.upPressed and !doubleJumped)
{
	velocity[YAXIS] = -jumpHeight;
	doubleJumped = true;
}
	
if (global.upReleased == true and velocity[YAXIS] < 0)
{
	velocity[YAXIS] = velocity[YAXIS] * jumpReleaseMod;
	jumpApexHoldTimer = 0;
}
		
if (global.downHeld == true and velocity[YAXIS] > 0)
{
	velocity[YAXIS] = velocity[YAXIS] * extraFallSpeed;
}
			
if (Yscale < 1)
{
	Yscale *= squishBackMod;
}
else
{
	Yscale = 1;
}
			
if (Xscale > 1)
{
	Xscale *= extendBackMod;
}
else
{
	Xscale = 1;
}
velocity[YAXIS] += grav;
		
// if we are about to touch the ground
if (y + velocity[YAXIS] >= startY)
{
	y = startY;
	velocity[YAXIS] = 0;
	scr_stateSwitch("wait");
	doubleJumped = false;
	Yscale = 1;
}