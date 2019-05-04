
if(!global.gameOver)	secondsPast += scoreSpeed/room_speed;

global.currentScore = round(secondsPast);

if(global.gameRestart) global.currentScore = 0;