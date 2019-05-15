if state_new
{
	Xscale = 1;
	Yscale = 1;
	currentSprite = spr_kiwiDead;
	image_speed = 0;
}

if(global.gameRestart == true)
{
	scr_stateSwitch("wait");
	velocity[XAXIS] = 0;
	velocity[YAXIS] = 0;
	y = startY;
}