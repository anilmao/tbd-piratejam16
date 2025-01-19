if(possessed)
{
    direction = point_direction(x, y, mouse_x, mouse_y);
    image_angle = direction;
}

if(!place_meeting(x + h_speed, y + v_speed, obj_collisionBlock))
{
    x += h_speed;
    y += v_speed;
}