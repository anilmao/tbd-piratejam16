var pixel_size = (bbox_bottom - bbox_top) / sprite_get_height(spr_pistol);

if(possessed)
{
    var temp_direction = point_direction(x, y, mouse_x, mouse_y);
    var new_origin_x = x + lengthdir_x(pixel_size * barrel_offset, temp_direction);
    var new_origin_y = y + lengthdir_y(pixel_size * barrel_offset, temp_direction);
    direction = point_direction(new_origin_x, new_origin_y, mouse_x, mouse_y);
    image_angle = direction;
}

//if(direction < 270 && direction > 90)
//{
    //image_xscale = -1;
//}
//else
//{
    //image_xscale = 1;
//}

if(!place_meeting(x + h_speed, y + v_speed, obj_collisionBlock))
{
    x += h_speed;
    y += v_speed;
}