
// score HUD
draw_set_color(c_black);
draw_set_font(fnt_debug);
if(global.gameOver == false)
{
	if (global.currentScore < 9.9)
	{
		#region score HUD
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
		#endregion
	}
}

// gameover screen
if(global.gameOver == true)
{
	// hud bg
	draw_sprite_ext(spr_gameoverSquare, 0, room_width/2, room_height/2, 1, 1, 0, global.secondaryColour, 1);
	
	// text
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_set_color(global.playerColour);
	draw_text(room_width/2, room_height/2 - 13, "SCORE");
	draw_set_color(c_black);
	draw_text(room_width/2, room_height/2 - 3, string(global.currentScore));
	draw_text(room_width/2, room_height/2 + 11, "R  TO PLAY AGAIN");


}