function scr_applyRecoil(obj_id)
{
    with(obj_id)
    {
        h_speed = lengthdir_x(weapon_recoil,fake_angle+180)
        v_speed = lengthdir_y(weapon_recoil,fake_angle*-1)
    }
}

function scr_shootBullet(obj_id)
{
    with(obj_id)
    {
        if(weapon_type == "biggun1" || weapon_type == "biggun2")
        {
            if(ammo_count < 999)
            {
                ammo_count -= 1;
            }
            firedelay = 9;
            with(instance_create_layer(x,y,"Bullets",obj_bullet))
            {
                speed = other.bullet_speed;
                direction = other.image_angle;
                image_angle = direction;
            }
        }
        else
        {
            if(ammo_count < 999)
            {
                ammo_count -= 1;
            }
            firedelay = 9;
            if(bullet_type == "energy")
            {
                with(instance_create_layer(x,y,"Bullets",obj_bullet)) 
                {
                    energy_bullet = true;
                    speed = other.bullet_speed;
                    direction = other.fake_angle;
                    image_angle = direction;
                }  
            }
            else
            {
                with(instance_create_layer(x,y,"Bullets",obj_bullet)) 
                {
                    speed = other.bullet_speed;
                    direction = other.fake_angle;
                    image_angle = direction;
                }   
            }
        }
    }
}

function scr_pushobject()
{
    for(var i = 0; i < 5; i++) 
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
}