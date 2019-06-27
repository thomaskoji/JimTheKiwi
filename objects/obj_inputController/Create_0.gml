// Initialize input holders
event_inherited()

global.upPressed = false;
global.upHeld = false;
global.upReleased = false;

global.downPressed = false;
global.downHeld = false;
global.downReleased = false;

global.rightPressed = false;
global.rightHeld = false;
global.rightReleased = false;

global.leftPressed = false;
global.leftHeld = false;
global.leftReleased = false;

global.confirmPressed = false;
global.confirmHeld = false;
global.confirmReleased = false;

global.anyPressed = false;
global.anyHeld = false;
global.anyReleased = false;

global.debugMode = false;

// input config
upButton0 = ord("W");
upButton1 = vk_up;

downButton0 = ord("S");
downButton1 = vk_down;

rightButton0 = ord("D");
rightButton1 = vk_right;

leftButton0 = ord("A");
leftButton1 = vk_left;

confirmButton = ord("E");

anyButton = vk_anykey;