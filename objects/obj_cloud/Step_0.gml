// Inherit the parent event
event_inherited();

if global.gameOver and place_meeting(x,y,obj_player) 
{
	switch sprite_index
	{
		case spr_cloud1:
			sprite_index = spr_cloud1gameover;
	
		case spr_cloud2:
			sprite_index = spr_cloud2gameover;
	
		case spr_cloud3:
			sprite_index = spr_cloud3gameover;
	
		case spr_cloud4:
			sprite_index = spr_cloud4gameover;
	}
}