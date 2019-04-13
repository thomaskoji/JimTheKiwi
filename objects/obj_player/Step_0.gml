
switch state
{
	case playerStates.wait:
		#region wait
		// Animation
		image_speed = DEFAULTANIMSPD;
		sprite_index = spr_kiwiWalk;
		if (state_new)
		{
			state_new = false;
		}
		
		if (global.upPressed)
		{
			state = playerStates.jump;
			state_new = true;
		}
		
		if (global.downHeld)
		{
			state = playerStates.duck;
			state_new = true;
		}
		#endregion
	break;

	case playerStates.jump:
		#region jump
		if (state_new)
		{
			velocity[YAXIS] = -jumpHeight;
			state_new = false;
			jumpApexHoldTimer = 4;
		}
		
		if (global.upPressed and !doubleJumped)
		{
			velocity[YAXIS] = -jumpHeight;
			doubleJumped = true;
		}
	
		if (global.upReleased == true and velocity[YAXIS] < 0)
		{
			velocity[YAXIS] = velocity[YAXIS] * jumpReleaseMod;
			jumpApexHoldTimer = 0;
		}
		
		if (global.downHeld == true and velocity[YAXIS] > 0)
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
			doubleJumped = false;
		}
		
		sprite_index = spr_kiwiJump;
		#endregion
	break;
		
	case playerStates.duck:
		#region duck
		if(global.downHeld)
		{
			state_new = false;
			image_speed = DEFAULTANIMSPD;
			sprite_index = spr_kiwiDuck;
		}else
		{
			state = playerStates.wait;
			state_new = true;
		}
		
		if (global.upPressed)
		{
			state = playerStates.jump;
			state_new = true;
		} 
		#endregion
	break;
}

x += velocity[XAXIS];
y += velocity[YAXIS];