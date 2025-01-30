if(obj_gameInitializer.show_tips == true && !instance_exists(obj_fader))
{
    switch(room)
    {
        case rm_tut_begin:
            msg_num = 0;
        break;
        case rm_level1_1:
            msg_num = 1;
        break;
        case rm_level1_2:
            msg_num = 2;
        break;
    }
}
if(hint == 0)
{
    popup_x = lerp(popup_x, 150,0.04);
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
    popup_x = lerp(popup_x, 600 ,0.1);
    if(popup_x >= 600)
    {
        hint = -1;
    }
}
if(hint == -1)
{
    popup_x = 600;
}

msg_timer = clamp(msg_timer,0, 999);
