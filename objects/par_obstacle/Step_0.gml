var _prs = 0;

if ( x < -100 )
{
	instance_destroy();
}

x -= global.runSpeed;

if(place_meeting(x,y,obj_player))
{
	global.gameOver = true;
	_prs = global.runSpeed;
	global.runSpeed = 0;
}


if(object_index != obj_cloud and global.gameHasNotStarted)
{
	instance_destroy();
}