/// @description scr_setOptionVariableStrings, points to variables for option menu.

optionVariableNameArray[3] = ": " + string(global.MUSVolume); // MUSIC VOLUME 
optionVariableNameArray[2] = ": " + string(global.SEVolume); // SE VOLUME 
optionVariableNameArray[1] = ": " + string(obj_displayController.zoom); // DISPLAY SCALE 

// FULLSCREEN SETTING 
switch window_get_fullscreen() 
{ 
    case 0: optionVariableNameArray[0] = ": Windowed"; break; 
    case 1: optionVariableNameArray[0] = ": Fullscreen"; break; 
}