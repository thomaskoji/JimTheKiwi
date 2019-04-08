draw_set_color(c_black);
draw_set_font(fnt_debug);
draw_text(15, 15, "Press Q to exit.");
draw_text(15, 25, "Hold P for debug mode.");




// score HUD

if (global.currentScore < 9.9)
{
	draw_text(scoreX,scoreY, "000000" + string(global.currentScore));
}

else if (global.currentScore < 100 and global.currentScore >= 10)
{
	draw_text(scoreX,scoreY, "00000" + string(global.currentScore));
}
		
else if (global.currentScore < 1000 and global.currentScore >= 100)
{
	draw_text(scoreX,scoreY, "0000" + string(global.currentScore));
}
		
else if (global.currentScore < 10000 and global.currentScore >= 1000)
{
	draw_text(scoreX,scoreY, "000" + string(global.currentScore));
}
		
else if (global.currentScore < 100000 and global.currentScore >= 10000)
{
	draw_text(scoreX,scoreY, "00" + string(global.currentScore));
}	

else if (global.currentScore < 1000000 and global.currentScore >= 100000)
{
	draw_text(scoreX,scoreY, "0" + string(global.currentScore));
}
		
else if (global.currentScore < 10000000 and global.currentScore >= 1000000)
{
	draw_text(scoreX,scoreY, string(global.currentScore));
}
