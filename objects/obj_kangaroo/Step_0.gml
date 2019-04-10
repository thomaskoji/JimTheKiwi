// setting animation speed
image_speed = 0;
sprite_index = spr_kangarooAttack;
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
		#endregion
		break;
		
	case obstacleStates.attack:
		#region attack
		
		//sprite
		image_speed = 1;
		//stopping sprite at last frame
		if(image_index = image_number - 1)
		{
			image_speed = 0;
		}
		#endregion
		break;
		
}