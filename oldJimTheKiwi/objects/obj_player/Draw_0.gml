/// @description Debug shit
draw_self()

draw_set_color(c_black);
if (sitting) draw_text(50,50,"sitting YE"); else draw_text(50,50,"sitting NO");
if (jumped) draw_text(50,70,"jumped  YE"); else draw_text(50,70,"jumped  NO");
if (running) draw_text(50,90,"running YE"); else draw_text(50,90,"running NO");
draw_text(50,110,"X speed : " + string(hsp));
draw_text(50,130,"Y speed : " + string(vsp));
draw_text(50,150,"sprite index : " + string(sprite_index));
draw_text(50,170,"image speed : " + string(image_speed));
draw_text(50,190,"Image index : " + string(image_index));


//if( insert bool test here ) draw_circle(400,200,50,false); else draw_circle(400,200,50,true);