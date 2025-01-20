if(possessed)
{
    persistent = true;
    
    if(mouse_check_button_pressed(mb_left) && can_shoot && ammo_count > 0 && firedelay < 0) //recoil jump "left click shot"
    {
        ammo_count -= 1;
        firedelay = 10;
        with(instance_create_layer(x,y,"Bullets",obj_bullet))
        {
            speed = other.bullet_speed
            direction = other.image_angle
            image_angle = direction
        }
        recoil_jump = true
    }
    
    if(mouse_check_button_pressed(mb_right) && can_shoot && ammo_count > 0 && !recoil_jump && firedelay < 0) //regular shot "right click shot"
    {
        ammo_count -= 1;
        with(instance_create_layer(x,y,"Bullets",obj_bullet))
        {
            speed = other.bullet_speed
            direction = other.image_angle
            image_angle = direction
        }
    }
    
    if(recoil_jump)
    {
        h_speed = lengthdir_x(weapon_recoil,image_angle+180)
        v_speed = lengthdir_y(weapon_recoil,image_angle*-1)
        recoil_jump = false
    }
    
    // Vertical Collision
    if(place_meeting(x + h_speed, y, obj_collisionBlock))
    {
        while(!place_meeting(x+sign(h_speed),y,obj_collisionBlock))
        {
           x = x + sign(h_speed) 
        }    
        h_speed = 0;
    }
    x = x + h_speed;
    
    // Horizontal Collision
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