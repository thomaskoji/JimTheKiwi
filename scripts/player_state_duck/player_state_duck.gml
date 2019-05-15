if(global.downHeld)
{
	image_speed = DEFAULT_ANIM_SPEED;
	currentSprite = spr_kiwiDuck;
	Yscale = 1;
	Xscale = 1;
}else
{
	scr_stateSwitch("wait");
}
		
if (global.upPressed)
{
	scr_stateSwitch("jump");
} 