if(possessed)
{
    var _ang = point_direction(x, y, mouse_x, mouse_y);
    var _diff = angle_difference(_ang, image_angle);
    image_angle += median(-25, _diff, 25);
}