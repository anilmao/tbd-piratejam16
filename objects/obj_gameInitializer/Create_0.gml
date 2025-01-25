//non debug stuff
window_set_cursor(cr_cross);
scr_ScaleGame(); //scales the game in-browser

global.player_score = 0;
global.debug = false; //turn this off before the release
game_paused = true;
kills = 0;
global.show_ui = true;



//debug stuff - put all debugging stuff here (if possible)
if(global.debug)
{
    show_debug_overlay(true,true,1,1);
    show_debug_log(true);
}