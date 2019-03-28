/// @description Afk Sit Anim Timer


if(sitting) 
{
	secondalarm = true;
	image_speed = 1;
	sprite_index = spriteJimLooksAround;
	image_index = 0;
	lookedAround = false;
	alarm[0] = room_speed * 8;
}

if(!sitting)
{
	image_speed = 1;
	sprite_index = spriteJimSit;
	lookedAround = false;
	alarm[0] = room_speed * 3;
}

sitting = true;