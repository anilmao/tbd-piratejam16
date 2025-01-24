function scr_ScaleGame()
{
    dh = display_get_height();
    dw = display_get_width();
    window_set_size(dw,dh);
    
    window_center();
    window_set_fullscreen(true);
}