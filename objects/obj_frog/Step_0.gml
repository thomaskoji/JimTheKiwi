// Inherit the parent event
event_inherited();

switch state
{
	
#region wait
	case obstacleStates.wait:
		image_speed = 0;
		image_index = 0;
		if (collision_line(x, y, x - jumpTriggerPoint, y, obj_player, false, false))
		{
			state = obstacleStates.attack;
			state_new = true;
		}
	break;
#endregion

#region attack
	case obstacleStates.attack:
	
	if state_new 
	{
		image_speed = 1;
		velocity[YAXIS] = -jumpHeight;
		state_new = false;
	}
	
	if (y + velocity[YAXIS] >= startY)
	{
		y = startY;
		velocity[YAXIS] = 0;
		state = obstacleStates.wait;
	}
	
	velocity[YAXIS] += grav;
	
	break;
	
#endregion
}


if (global.gameOver = false)
{
	y += velocity[YAXIS];
}
else
{
	state = obstacleStates.wait
}