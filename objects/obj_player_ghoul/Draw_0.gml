if(my_weapon != noone)
{
    draw_text(x,y,string(my_weapon.image_angle))
}

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
    image_angle = point_direction(x,y,0,0);
}
else
{
    image_angle = 0;
}

draw_circle_color(x,y,player_possess_radius,#b0e4e4,#b0e4e4,true);