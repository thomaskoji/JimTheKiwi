event_inherited();
sprite_index = currentSprite;

scr_stateExecute();

if(global.gameOver == true and state != "gameover") 
{
	scr_stateSwitch("gameover");
}
	
if (global.gameOver = false)
{
	x += velocity[XAXIS];
	y += velocity[YAXIS];
}