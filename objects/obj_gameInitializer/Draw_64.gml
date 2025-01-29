if(game_paused) //draw stuff here for it to be seen while game is paused
{
    draw_text_transformed_color(camera_get_view_x(view_camera[0])/room_width,camera_get_view_y(view_camera[0])/room_height+20, "GAME PAUSED", 2,2,0,#eeffcc,#eeffcc,#eeffcc,#eeffcc,1);
}
