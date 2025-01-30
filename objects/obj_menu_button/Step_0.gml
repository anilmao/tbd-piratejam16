if(mouse_check_button_pressed(mb_left))
{
    if(point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top+5, bbox_right + string_width(text)-5, bbox_bottom)) //button hitbox
    {
        switch(type) //button.....state machine?
        {
            case "play":
            scr_warp(rm_debug,40,128,0.5, #eeffcc);
            //scr_warp(rm_tut_begin,104,24,0.5, #eeffcc); //PUT PLAYER GHOUL AND A GUN AT THE BEGINNING OF rm_tut_begin
            break;
            case "settings":
            obj_gameInitializer.menu_page = 1;
            break;
            case "exit":
            game_end()
            break;
            case "back":
            if(obj_gameInitializer.menu_page != 0)
            {
                obj_gameInitializer.menu_page -= 1;
            }
            break;
        } 
    }
    if(type == "volume")
    {
        if(point_in_rectangle(mouse_x , mouse_y ,bbox_left+string_width(text)+13, bbox_top+5, bbox_right+string_width(text)+8, bbox_bottom)) //volume up
        {
            show_debug_message("VOLUME UP!")
            with(obj_music)
            {
                music_volume += 0.1;
                audio_group_set_gain(ag_Music,music_volume, 0.1);
            }
        }
        if(point_in_rectangle(mouse_x , mouse_y ,bbox_left+string_width(text)+30, bbox_top+5, bbox_right+string_width(text)+25, bbox_bottom)) //volume down
        {
            show_debug_message("VOLUME DOWN!")
            with(obj_music)
            {
                music_volume -= 0.1;
                audio_group_set_gain(ag_Music,music_volume, 0.1);
            }
        }
    }
}