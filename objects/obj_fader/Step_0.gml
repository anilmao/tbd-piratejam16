depth = -999999;
if(fade_state == 0) //transition start
{
    instance_deactivate_layer("Gun");
    if(fade_radius < fade_radius_max)
    {
        fade_radius += fade_spd * 2;
    }
    else
    {
        fade_state = 1;
    }
    if(instance_exists(obj_player_ghoul))
    {
        with(obj_player_ghoul)
        {
            if(my_weapon != noone)
            {
                my_weapon.h_speed = 0;
                my_weapon.v_speed = 0;
                my_weapon.can_shoot = false;
            }
        }
    }
    
}
else //transition end
{
    if(room != warp_room && warp_room != noone)
    {
        room_goto(warp_room);
    }
    if(instance_exists(obj_player_ghoul))
    {
        with(obj_player_ghoul)
        {
            if(my_weapon != noone)
            {
                my_weapon.x = other.warp_x;
                my_weapon.y = other.warp_y;
                my_weapon.can_shoot = false;
            }
        }
    }
    if(fade_radius > 0)
    {
        fade_radius -= fade_spd * 2;
    }
    else
    {
        instance_destroy();
    }
    
}
