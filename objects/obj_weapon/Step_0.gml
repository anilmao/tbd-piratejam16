if(place_meeting(x,y+2,obj_collisionBlock))
{
    grounded = true;
}
else
{
    grounded = false;
}

firedelay = firedelay - 1;
firedelay = clamp(firedelay, -5, 999);

if(possessed)
{
    persistent = true;
    
    if(ammo_count <= 0 || firedelay > 0)
        can_shoot = false;
    else
        can_shoot = true;
    
    if(can_shoot)
    {
        if(mouse_check_button_pressed(mb_left))  //recoil jump "left click shot"
        {
            scr_shootBullet(id);
            scr_applyRecoil(id);
        }
            
        if(mouse_check_button_pressed(mb_right)) //regular shot "right click shot"
        {
            scr_shootBullet(id);
        }
    }
    
    if(keyboard_check_pressed(vk_space))
    {
        keyboard_clear(vk_space);
        possessed = false;
        with(obj_player_ghoul)
        {
            in_weapon = false;
        }
    }
    
    // Horizontal Collision
    if(place_meeting(x + h_speed, y, obj_collisionBlock))
    {
        while(!place_meeting(x+sign(h_speed),y,obj_collisionBlock))
        {
           x = x + sign(h_speed) 
        }    
        h_speed = 0;
    }
    x = x + h_speed;
    
    // Vertical Collision
    if(place_meeting(x, y + v_speed, obj_collisionBlock))
    {
        while(!place_meeting(x,y+sign(v_speed),obj_collisionBlock))
        {
            y = y + sign(v_speed)
        }    
        v_speed = 0;
    }
    y = y + v_speed;
    
    if(mouse_x < x)
    {
        image_yscale = -1;
    }
    else
    {
        image_yscale = 1;
    }
    
    scr_pushobject();
}
else 
{ 
    persistent = false;
    if(grounded)
    {
        h_speed = 0;
        v_speed = 0; 
    }
    else
    {
        y = y + v_speed;
        scr_pushobject();
    }
}

v_speed += weapon_gravity; //Apply Gravity

show_debug_message(firedelay)