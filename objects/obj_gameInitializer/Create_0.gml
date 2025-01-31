//non debug stuff
scr_ScaleGame(); //scales the game in-browser

global.player_score = 0;
global.debug = false; //turn this off before the release!!!
global.show_ui = true; //show AMMO UI?
global.ghouls = array_create(3);
game_paused = false; //is the game paused?
game_pause_surf = -1;
game_pause_surf_buffer = -1;
kills = 0; //how many enemies were killed
escaped = 0; //how many enemies escaped
show_tips = true; //show hints and tips
menu_page = 0; //page of menu menu [Settings would be page 1 for example]
bg_scroll_alpha = 0;

draw_set_font(fnt_main); //setting the main font

//debug stuff - everything you debug make sure you put in an if statement that checks if global.debug is true
if(global.debug)
{
    show_debug_overlay(true,true,1,1);
    show_debug_log(true);
}