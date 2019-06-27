 global.upPressed = (keyboard_check_pressed(upButton0) or keyboard_check_pressed(upButton1));
global.upHeld = (keyboard_check(upButton0) or keyboard_check(upButton1));
global.upReleased = (keyboard_check_released(upButton0) or keyboard_check_released(upButton1));

global.downPressed = (keyboard_check_pressed(downButton0) or keyboard_check_pressed(downButton1));
global.downHeld = (keyboard_check(downButton0) or keyboard_check(downButton1));
global.downReleased = (keyboard_check_released(downButton0) or keyboard_check_released(downButton1));

global.rightPressed = (keyboard_check_pressed(rightButton0) or keyboard_check_pressed(rightButton1));
global.rightHeld = (keyboard_check(rightButton0) or keyboard_check(rightButton1));
global.rightReleased = (keyboard_check_released(rightButton0) or keyboard_check_released(rightButton1));

global.leftPressed = (keyboard_check_pressed(leftButton0) or keyboard_check_pressed(leftButton1));
global.leftHeld = (keyboard_check(leftButton0) or keyboard_check(leftButton1));
global.leftReleased = (keyboard_check_released(leftButton0) or keyboard_check_released(leftButton1));

global.confirmPressed = keyboard_check_pressed(confirmButton);
global.confirmHeld = keyboard_check(confirmButton);
global.confirmReleased = keyboard_check_released(confirmButton);

global.anyPressed = keyboard_check_pressed(anyButton);
global.anyHeld = keyboard_check(anyButton);
global.anyReleased = keyboard_check_released(anyButton);


// press P for debug mode
if(keyboard_check(ord("P"))) global.debugMode = true;
else global.debugMode = false;


// press Q to end game
if(keyboard_check_pressed(ord("Q"))) game_end();

if(global.gameOver == true)
{	
	if(keyboard_check_pressed(ord("R"))) global.gameRestart = true;
}

if (room = rm_gameRoom)
{
	if(keyboard_check_pressed(anyButton)) 
	{global.gameHasNotStarted = false;}
}