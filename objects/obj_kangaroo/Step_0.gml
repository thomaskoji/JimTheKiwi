// setting animation speed
image_speed = ANIMSPEEDHALF;

switch state
{
	case obstacleStates.wait:
		#region wait
		
		// Transition Triggers
		if(collision_line(x - triggerPointX, y, x, y, obj_player, false, false))
		{
			state = obstacleStates.attack;
		}
		
		// sprite
		sprite_index = spr_kangaroo;  // THIS SPRITE IS PLACE HOLDER
		#endregion
		break;
		
	case obstacleStates.attack:
		#region attack
		
		//sprite
		sprite_index = spr_kangarooAttack // THIS SPRITE IS PLACE HOLDER
		image_speed = ANIMSPEEDDBL;
		//stopping sprite at last frame
		if(image_index = image_number - 1)
		{
			image_speed = 0;
		}
		#endregion
		break;
		
}