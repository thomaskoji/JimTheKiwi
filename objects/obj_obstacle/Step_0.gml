var _prs = 0;

if ( x < -100 or global.gameRestart )
{
	instance_destroy();
	global.gameRestart = false;
	global.gameOver = false;
	global.runSpeed = 1;
}

x -= global.runSpeed;

if(place_meeting(x,y,obj_player))
{
	global.gameOver = true;
	_prs = global.runSpeed;
	global.runSpeed = 0;
}