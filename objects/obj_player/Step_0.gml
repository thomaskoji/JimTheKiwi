event_inherited();
sprite_index = currentSprite;

if(global.gameOver == true) 
{
	state = playerStates.game_over;
	state_new = true;
}

switch state
{
	#region wait
		case playerStates.wait:
		
			// Animation
			image_speed = DEFAULTANIMSPD;
			currentSprite = spr_kiwiWalk;
		
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
			
			if (previousState = playerStates.jump)
			{
				Xscale = squishedScale;
				Yscale = extendedScale;
			}
			
			if (Xscale < 1)
			{
				Xscale *= squishBackMod;
			}
			else
			{
				Xscale = 1;
			}
			
			if (Yscale > 1)
			{
				Yscale *= extendBackMod;
			}
			else
			{
				Yscale = 1;
			}
			previousState = playerStates.wait;
		break;
	#endregion
	
	#region jump
		case playerStates.jump:
			previousState = playerStates.jump;
			if (state_new)
			{
				velocity[YAXIS] = -jumpHeight;
				state_new = false;
				jumpApexHoldTimer = 4;
				Yscale = squishedScale;
				Xscale = extendedScale;
				currentSprite = spr_kiwiJump;
				instance_create_layer(x, y, "players", obj_jumpParticle);
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
			
			if (Yscale < 1)
			{
				Yscale *= squishBackMod;
			}
			else
			{
				Yscale = 1;
			}
			
			if (Xscale > 1)
			{
				Xscale *= extendBackMod;
			}
			else
			{
				Xscale = 1;
			}
			velocity[YAXIS] += grav;
		
			// if we are about to touch the ground
			if (y + velocity[YAXIS] >= startY)
			{
				y = startY;
				velocity[YAXIS] = 0;
				state = playerStates.wait;
				state_new = true;
				doubleJumped = false;
				Yscale = 1;
			}
		break;
	#endregion
		
	#region duck
		case playerStates.duck:
			previousState = playerStates.duck;
			if(global.downHeld)
			{
				state_new = false;
				image_speed = DEFAULTANIMSPD;
				currentSprite = spr_kiwiDuck;
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
		break;
	#endregion
	
	#region gameOver
		case playerStates.game_over:
			state_new = false;
			Xscale = 1;
			Yscale = 1;
			currentSprite = spr_kiwiDead;
			image_speed = 0;
			if(global.gameRestart == true)
			{
				state = playerStates.wait;
				state_new = true;
				velocity[XAXIS] = 0;
				velocity[YAXIS] = 0;
				y = startY;
			}
		break;
	#endregion
}
	
if (global.gameOver = false)
{
	x += velocity[XAXIS];
	y += velocity[YAXIS];
}