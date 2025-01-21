function scr_applyRecoil(obj_id)
{
    with(obj_id)
    {
        h_speed = lengthdir_x(weapon_recoil,image_angle+180)
        v_speed = lengthdir_y(weapon_recoil,image_angle*-1)
    }
}

function scr_shootBullet(obj_id)
{
    with(obj_id)
    {
        ammo_count -= 1;
        firedelay = 10;
        with(instance_create_layer(x,y,"Bullets",obj_bullet)) 
        {
            speed = other.bullet_speed
            direction = other.image_angle
            image_angle = direction
        }
    }
}

function scr_pushobject()
{
    if(place_meeting(x,y+1,obj_collisionBlock)) //this is for checking if the player is in a wall, and if they are they get pushed out
    {
        for(var i = 0; i < game_get_speed(gamespeed_fps); i++)
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
}