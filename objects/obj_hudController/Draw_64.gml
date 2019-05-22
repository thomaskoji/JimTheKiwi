#region START SCREEN

	var _c = scr_getColour(2);
	if(global.gameHasNotStarted)
	{
		draw_set_halign(fa_center);
		draw_set_valign(fa_center);
		draw_text_ext_transformed_color
		(room_width/2, 22, "JIM THE KIWI", 6, 100, 2, 2, 0, _c, _c, _c, _c, 1);
		draw_set_color(c_black);
		draw_text(room_width/2, room_height*7/8, "PRESS  Q  TO  QUIT");
	}

	if(timer > DefaultTimer/2 and global.gameHasNotStarted)
	{
		draw_text(room_width/2, room_height/2, "press any button");
	}
	else
	{
		if(timer = 0) timer += DefaultTimer;
	}
	timer --;
#endregion

#region SCORE HUD
	draw_set_color(c_black);
	draw_set_font(fnt_debug);
	if(global.gameOver == false and !global.gameHasNotStarted)
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
#endregion

#region DEBUG TEXTS
	if(global.debugMode)
	{
		draw_text(50,10,"GO " + string(global.gameOver));
		draw_text(75,10,"GR " +string(global.gameRestart));
	}
#endregion

#region GAMEOVER SCREEN
	if(global.gameOver == true)
	{
		// hud bg
		draw_sprite_ext(spr_gameoverSquare, 0, room_width/2, room_height/2, 1, 1, 0, scr_getColour(1), 1);
	
		// text
		draw_set_valign(fa_center);
		draw_set_halign(fa_center);
		draw_set_color(c_black);
		draw_text(room_width/2, room_height/2 - 13, "SCORE");
		draw_set_color(c_black);
		draw_text(room_width/2, room_height/2 - 3, string(global.currentScore));
		draw_text(room_width/2, room_height/2 + 11, "R  TO PLAY AGAIN");
	}
#endregion