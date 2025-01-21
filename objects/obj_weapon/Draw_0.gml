draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1);

//draw_line(x, y, mouse_x, mouse_y);

if(mouse_x < x)
{
    image_yscale = -1;
}
else
{
    image_yscale = 1;
}