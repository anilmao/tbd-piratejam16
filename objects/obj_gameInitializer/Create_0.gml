//non debug stuff
scr_ScaleGame(); //scales the game in-browser

global.player_score = 0;
global.debug = false; //turn this off before the release
global.show_ui = true; //show AMMO UI?
game_paused = true;
kills = 0;



//debug stuff - put all debugging stuff here (if possible)
if(global.debug)
{
    show_debug_overlay(true,true,1,1);
    show_debug_log(true);
}