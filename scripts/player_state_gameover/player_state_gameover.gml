if state_new
{
	Xscale = 1;
	Yscale = 1;
	currentSprite = spr_kiwiDead;
	image_speed = 0;
}

if(global.gameRestart == true)
{
	with par_obstacle
	{
		if ( bbox_right > 0 and bbox_bottom > 0
			 and bbox_left < room_width
			 and bbox_top < room_height)
		{
			instance_destroy();
		}
	}
	
	global.gameRestart	= false;
	global.gameOver		= false;
	global.runSpeed		= global.runSpeedDefult;
	
	scr_stateSwitch("wait");
	velocity[XAXIS] = 0;
	velocity[YAXIS] = 0;
	y = startY;
}