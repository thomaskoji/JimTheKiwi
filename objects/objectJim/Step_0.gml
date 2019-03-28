// Get player input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);
key_pressed = keyboard_check(vk_anykey);
if (hsp == 0) running = false; else running = true;

// Calculate movement
var move = key_right - key_left;

hsp = move * walksp;
vsp = vsp + grv;

if ((place_meeting(x, y + 1, objectWall)) && (key_jump))
{
	vsp = -jumpsp;
	jumped = true;
}

// Horizonal collision
if (place_meeting(x + hsp, y, objectWall))
{
	while (!place_meeting(x + sign(hsp), y, objectWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;


// Vertical collision
if (place_meeting(x, y + vsp, objectWall))
{
	while (!place_meeting(x, y + vsp, objectWall))
	{
		y = y + sign(hsp);
	}
	vsp = 0;
	jumped = false;
}
y = y + vsp;

// Animations
if (!place_meeting(x, y + 1, objectWall))
{
	sprite_index = spriteJimJump;
	image_speed = 0;
	if (sign(vsp)>0) image_index = 1; else image_index = 0;
}
else
{
	if(hsp == 0 && !sitting) 
	{
		sprite_index = spriteJimIdle;
	}
	else if (hsp != 0)
	{
		image_speed = 1;
		sprite_index = spriteJimWalk;
	}
}

if (hsp != 0) image_xscale = sign(hsp) * xscale;

// stopping animation
if(image_index > 2.1 && !lookedAround && sitting) 
{
	lookedAround = true;
	image_speed = 0;
}

// alarm resetting
if (key_pressed) 
{
	alarm[0] = room_speed * 1;
	sitting = false;
}