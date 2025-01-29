if(keyboard_check_pressed(ord("R")) && !game_paused)
{
    if(instance_exists(obj_marker))
    {
        if(show_tips)
        {
            with(obj_hints)
            {
                msg_timer = 600;
                hint = -1;
            }
        }
        audio_play_sound(snd_sigh,1,false);
        scr_warp(room,obj_marker.x,obj_marker.y);
        room_restart();
    }
}

if(instance_exists(obj_target))
{
    if(menu_page == 0)
    {
        obj_target.x = lerp(obj_target.x,160,0.1);
        bg_scroll_alpha = lerp(bg_scroll_alpha, 0, 0.08);
    }
    else 
    {
        obj_target.x = lerp(obj_target.x,488,0.1);
        bg_scroll_alpha = lerp(bg_scroll_alpha, 1, 0.05);
    }
}

if(room == rm_menu)
{
    layer_background_alpha(layer_background_get_id(layer_get_id("bg_scroll")), bg_scroll_alpha)
}