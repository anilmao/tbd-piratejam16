if(mouse_check_button_pressed(mb_left))
{
    if(point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top+5, bbox_right + string_width(text)-5, bbox_bottom)) //button hitbox
    {
        switch (type) //button.....state machine?
        {
            case "play":
            scr_warp(rm_debug,40,128,0.5, #eeffcc);
            //scr_warp(rm_tut_begin,104,24,0.5, #eeffcc);
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
}