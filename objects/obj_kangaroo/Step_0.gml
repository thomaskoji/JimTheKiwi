event_inherited();
// setting animation speed
image_speed = .5;

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
		sprite_index = spr_kangaroo;
		#endregion
		break;
		
	case obstacleStates.attack:
		#region attack
		
		//sprite
		sprite_index = spr_kangarooAttack
		image_speed = 3;
		//stopping sprite at last frame
		if image_index > image_number - 1
		{
			image_speed = 0;
		}
		#endregion
		break;
		
}