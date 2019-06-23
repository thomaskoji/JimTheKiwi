event_inherited();

draw_set_font(fnt_debug);

optionsGridA = ds_grid_create(optionsGridProperties.enum_size, 3);
scr_declareOptionsMenu(optionsGridA, 0, "start game", scr_startGame, NULLVALUE, false, buttonTypes.toggle);
scr_declareOptionsMenu(optionsGridA, 1, "options", scr_openOptions, NULLVALUE, false, buttonTypes.toggle);
scr_declareOptionsMenu(optionsGridA, 2, "exit game", scr_exitGame, NULLVALUE, false, buttonTypes.toggle);

optionsGridB = ds_grid_create(optionsGridProperties.enum_size, 5);
scr_declareOptionsMenu(optionsGridB, 0, "full screen", scr_adjustFullScreen, NULLVALUE, true, buttonTypes.toggle);
scr_declareOptionsMenu(optionsGridB, 1, "window scale", scr_adjustWindowScale, NULLVALUE, true, buttonTypes.toggle);
scr_declareOptionsMenu(optionsGridB, 2, "se volume", scr_adjustSEVolume, .1, true, buttonTypes.slider);
scr_declareOptionsMenu(optionsGridB, 3, "music volume", scr_adjustMUSVolume, .1, true, buttonTypes.slider);
scr_declareOptionsMenu(optionsGridB, 4, "back", scr_closeOptions, NULLVALUE, false, buttonTypes.toggle);

scr_setOptionVariableStrings();

optionSeparation = string_height("A");
currentMenuGrid = optionsGridA; 
currentMenuHeight = ds_grid_height(currentMenuGrid); // # of entries in current Grid 
cursorLocation = 0 ; // Location of the cursor in the current menu optionSeparation = 50; // Distance (in pixels) that options should be separated) 

//scr_declareOptionsMenu();