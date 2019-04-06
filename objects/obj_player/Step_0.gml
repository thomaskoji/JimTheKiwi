
switch state
{
	case playerStates.wait:
		if (state_new)
		{
			state_new = false;
		}
		
		if (global.upPressed)
		{
			state = playerStates.jump;
			state_new = true;
		}
		break;
	
	case playerStates.jump:
		if (state_new)
		{
			velocity[YAXIS] = -(jumpHeight);
			state_new = false;
			jumpApexHoldTimer = 4;
		}
	
		if (global.upReleased == true and velocity[YAXIS] < 0)
		{
			velocity[YAXIS] = velocity[YAXIS] * jumpReleaseMod;
			jumpApexHoldTimer = 0;
		}
		
		if (global.downHeld == true and velocity[YAXIS] < 0)
		{
			velocity[YAXIS] = velocity[YAXIS] * extraFallSpeed;
		}
	
		var _grav = .1;
		velocity[YAXIS] += _grav;
	
		// if we are about to touch the ground
		if (y + velocity[YAXIS] >= startY)
		{
			y = startY;
			velocity[YAXIS] = 0;
			state = playerStates.wait;
			state_new = true;
		}
		break;
}

x += velocity[XAXIS];
y += velocity[YAXIS];