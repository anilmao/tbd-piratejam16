draw_sprite_ext(sprite_index, image_index, x, y,image_xscale,image_yscale,image_angle,c_white,image_alpha);
if(mouse_x > x)
{
    image_xscale = 1;
}
else
{
    image_xscale = -1;
}

if(in_weapon)
{
    image_angle = point_direction(x,y,nearest_weapon,nearest_weapon)
}
else
{
    image_angle = 0;
}

draw_circle_color(x,y,30,#b0e4e4,#b0e4e4,true);