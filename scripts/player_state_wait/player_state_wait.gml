if (state_new)
{
	// Animation
	image_speed = DEFAULT_ANIM_SPEED;
	currentSprite = spr_kiwiWalk;
				
}
		
if (global.upPressed)
{
	scr_stateSwitch("jump");
}
		
if (global.downHeld)
{
	scr_stateSwitch("duck");
}
/*
if (state_previous = "jump")
{
	Xscale = squishedScale;
	Yscale = extendedScale;
}
*/	
if (Xscale < 1)
{
	Xscale *= squishBackMod;
}
else
{
	Xscale = 1;
}
			
if (Yscale > 1)
{
	Yscale *= extendBackMod;
}
else
{
	Yscale = 1;
}