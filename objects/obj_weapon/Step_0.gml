if(possessed)
{
    persistent = true;
    
    if(ammo_count <= 0 or firedelay > 0)
        can_shoot = false;
    else
        can_shoot = true;
    
    if(can_shoot)
    {
        if(mouse_check_button_pressed(mb_left))  //recoil jump "left click shot"
        {
            firedelay = 10;
            scr_shootBullet(id);
            scr_applyRecoil(id);
        }
            
        if(mouse_check_button_pressed(mb_right)) //regular shot "right click shot"
        {
            scr_shootBullet(id);
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
}
else 
{ 
    persistent = false;
}

v_speed += weapon_gravity; // Apply Gravity

if(place_meeting(x,y+1,obj_collisionBlock)) //this is for checking if the player is in a wall, and if they are they get pushed out
{
    for(var i = 0; i < 60; i++)
    {
        if(!place_meeting(x + i, y, obj_collisionBlock))
        {
            x+=i;
            break;
        }
        if(!place_meeting(x - i, y, obj_collisionBlock))
        {
            x-=i;
            break;
        }
        if(!place_meeting(x, y+i, obj_collisionBlock))
        {
            y+=i;
            break;
        }
        if(!place_meeting(x, y-i, obj_collisionBlock))
        {
            y-=i;
            break;
        }
        if(!place_meeting(x+i, y-i, obj_collisionBlock))
        {
            x+=i;
            y-=i;
            break;
        }
        if(!place_meeting(x-i, y-i, obj_collisionBlock))
        {
            x-=i;
            y-=i;
            break;
        }
        if(!place_meeting(x+i, y+i, obj_collisionBlock))
        {
            x+=i;
            y+=i;
            break;
        }
        if(!place_meeting(x-i, y+i, obj_collisionBlock))
        {
            x-=i;
            y+=i;
            break;
        }
    }
    h_speed = 0;
    v_speed = 0;
}