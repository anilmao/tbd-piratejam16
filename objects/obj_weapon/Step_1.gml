if(possessed)
{
    firedelay = firedelay - 1;
    image_angle = point_direction(x, y, mouse_x, mouse_y);
}

firedelay = clamp(firedelay , -5, 999);