if(possessed)
{
    depth = -1;
    image_blend = make_color_rgb(150,225,255);
    switch(weapon_type)
    {
        case "pistol":
        case "shotgun":
            var _ang = point_direction(x, y, mouse_x, mouse_y);
            var _diff = angle_difference(_ang, image_angle);
            image_angle += median(-25, _diff, 25);
        break;
        case "biggun1":
        case "biggun2":
            var _ang = point_direction(x, y, mouse_x, mouse_y);
            var _diff = angle_difference(_ang, image_angle);
            image_angle += median(-25, _diff, 25);
            if(flipped == -1)
            {
                image_angle = clamp(image_angle, -50, 50);
            }
            else
            {
                image_angle = clamp(image_angle, -240, -120);
            }
        break;
    }
}
else
{
    depth = 0;
    image_blend = c_white;
}