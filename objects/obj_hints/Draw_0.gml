switch(room)
{
    case rm_tut_begin:
    break;
}

if(hint != -1)
{
    draw_sprite_stretched_ext(spr_popup, 0, popup_x, popup_y, string_width(hint_msg[0]), string_height(hint_msg[msg_num]), c_white, 1)
    draw_text_transformed_color(popup_x+5, popup_y+5, hint_msg[msg_num], 0.5, 0.5, 0, c_black, c_black , c_black, c_black, 1);
}
