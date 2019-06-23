if (global.downPressed)
{
	cursorLocation += 1;
}
else if (global.upPressed)
{
	cursorLocation -= 1;
}

if  (cursorLocation > ds_grid_height(currentMenuGrid) -1)
{
	cursorLocation = 0;
}

if (cursorLocation < 0)
{
	cursorLocation = ds_grid_height(currentMenuGrid) -1;
}

if (global.confirmPressed)
{
	var _scriptToRun = ds_grid_get(currentMenuGrid, optionsGridProperties.script, cursorLocation);
	var _argument = ds_grid_get(currentMenuGrid, optionsGridProperties.argument_to_pass, cursorLocation);
	if (_argument == NULLVALUE)
	{
		script_execute(_scriptToRun);
	}
	else
	{
		script_execute(_scriptToRun, _argument);
	}
}