if(obj_gameInitializer.show_tips == true)
{
    switch(room)
    {
        case rm_tut_begin:
            if(obj_player_ghoul.my_weapon.ammo_count > 0)
            {
                msg_num = 0;
                hint = 0;
            }
            else
            {
               msg_num = 6;
                if(hint != 0)
                {
                    hint = 0; 
                }
               msg_time = 600;
            }
        break;
    }
}
if(hint == 0)
{
    popup_x = lerp(popup_x, camera_get_view_x(view_camera[0])+150,0.04);
    if(msg_timer != 0)
    {
        msg_timer -= 1;
    }
    else
    {
        hint = 1;
    }
    
}
if(hint == 1)
{
    popup_x = lerp(popup_x, camera_get_view_x(view_camera[0])+600,0.1);
}

msg_timer = clamp(msg_timer,0, 999);
