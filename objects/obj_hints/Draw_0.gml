if(hint != -1)
{
    draw_sprite_stretched_ext(spr_popup, 0, camera_get_view_x(view_camera[0])+popup_x, camera_get_view_y(view_camera[0])+20, string_width(hint_msg[0]), string_height(hint_msg[msg_num])+3, c_white, 1)
    draw_text_transformed_color(camera_get_view_x(view_camera[0])+popup_x+5, camera_get_view_y(view_camera[0])+25, hint_msg[msg_num], 0.5, 0.5, 0, c_black, c_black , c_black, c_black, 1);
}
