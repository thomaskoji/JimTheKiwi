
if(!global.gameOver and !global.gameHasNotStarted)	secondsPast += scoreSpeed/room_speed;

global.currentScore = round(secondsPast);

if(global.gameRestart) 
{
	global.currentScore = 0;
	secondsPast = 0;
}