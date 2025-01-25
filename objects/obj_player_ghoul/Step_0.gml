if(in_weapon)
{
    var hover = instance_position(mouse_x,mouse_y,obj_weapon);

    if((keyboard_check_pressed(vk_space)))
    {
        with(hover)
        {
            if(collision_circle(x,y,obj_player_ghoul.player_possess_radius,obj_player_ghoul,false,true) && hover.id != other.my_weapon.id)
            {
                other.my_weapon.possessed = false;
                other.at_weapon = false;
                scr_WeaponSwap(hover);
            }
        }
    }
    
    if(at_weapon)
    {
        x = my_weapon.x;
        y = my_weapon.y;
    }
}
else
{
    var nearest_inst = instance_nearest(x,y,obj_weapon);
    
    sprite_index = spr_player_possess;
    
    image_angle = point_direction(x,y,nearest_inst.x,nearest_inst.y);
    
    if(my_weapon == noone) //the player automatically goes into the nearest weapon (could be used for the first level as a "cutscene")
    {
        x = lerp(x, nearest_inst.x, 0.1);
        y = lerp(y, nearest_inst.y, 0.1);
        
        if(place_meeting(x,y,nearest_inst))
        {
            scr_GetToGun(nearest_inst);
            at_weapon = true;
        }
    }
    else
    {
        x = lerp(x, my_weapon.x, 0.1);
        y = lerp(y, my_weapon.y, 0.1);
        
        if(place_meeting(x,y,my_weapon))
        {
            scr_GetToGun(my_weapon);
            at_weapon = true;
        } 
    }
}