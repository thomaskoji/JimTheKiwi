if ( x < -100 ) instance_destroy();

x -= global.runSpeed;

if(place_meeting(x,y,obj_player))
{
	global.gameOver = true;
	global.runSpeed = 0;
}