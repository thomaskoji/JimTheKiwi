global.upPressed = (keyboard_check_pressed(upButton0) or keyboard_check_pressed(upButton1));
global.upHeld = (keyboard_check(upButton0) or keyboard_check(upButton1));
global.downPressed = (keyboard_check_pressed(downButton0) or keyboard_check_pressed(downButton1));
global.downHeld = (keyboard_check(downButton0) or keyboard_check(downButton1));
global.confirmPressed = keyboard_check_pressed(confirmButton);
global.confirmHeld = keyboard_check(confirmButton);