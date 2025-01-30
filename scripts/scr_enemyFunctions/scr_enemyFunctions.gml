function scr_enemy_chill()
{
    if(collision_line(x,y,obj_player_ghoul.x,obj_player_ghoul.y,obj_player_ghoul,false,true) && !collision_line(x,y,obj_player_ghoul.x,obj_player_ghoul.y,obj_collisionBlock,false,true))
    {
        if(enemy_weapon_type != 0)
        {
            enemy_state = "alert";
        }
        else 
        {
            enemy_state = "scared";
        }
    }
}
function scr_enemy_dead()
{
    image_speed = random_range(0.3,0.5);
    
    if(obj_player_ghoul.x < x)
    {
        image_xscale = -1;
    }
    else
    {
        image_xscale = 1;
    }
    
    if(round(image_index) == 7)
    {
        obj_gameInitializer.kills += 1;
        image_index = 7;
        image_speed = 0;
        switch(enemy_weapon_type)
        {
            case 1:
                instance_create_layer(x,y,"Gun",obj_pistol);
            break;
            case 2:
                instance_create_layer(x,y,"Gun",obj_shotgun);
            break;
        }
        instance_destroy();
    } 
}
function scr_enemy_scared()
{
    image_speed = 0.4;
    if(instance_exists(obj_enemy_escape_point))
    {
        if(obj_enemy_escape_point.x < x)
        {
            image_xscale = -1;
        }
        else 
        {
            image_xscale = 1;    
        }
        
        mp_potential_step(obj_enemy_escape_point.x,y,enemy_sprint_speed,false);
        
        if(instance_place(x,y,obj_enemy_escape_point))
        {
            obj_gameInitializer.escaped += 1;
            instance_destroy();
        }
    }
}
function scr_enemy_alert()
{
    if(collision_line(x,y,obj_player_ghoul.x,obj_player_ghoul.y,obj_player_ghoul,false,true) && !collision_line(x,y,obj_player_ghoul.x,obj_player_ghoul.y,obj_collisionBlock,false,true))
    {
        image_angle = point_direction(x,y,obj_player_ghoul.x,obj_player_ghoul.y);
        
        if(shoot_timer == 0)
        {
            if(enemy_weapon_type == 1)
            {
                with(instance_create_layer(x,y,"Bullets",obj_bullet))
                {
                    enemy_bullet = true;
                    speed = 8;
                    direction = other.image_angle;
                    image_angle = direction;
                }
                shoot_timer = shoot_time;
                audio_play_sound(snd_pistol_fire,0,false,0.35,undefined,random_range(0.8,1.2));
            }
            else 
            {   
                with(instance_create_layer(x,y,"Bullets",obj_bullet))
                {
                    enemy_bullet = true;
                    speed = 6;
                    direction = other.image_angle;
                    image_angle = direction;
                }
                shoot_timer = shoot_time;
                audio_play_sound(snd_shotgun_fire,0,false,0.35,undefined,random_range(0.8,1.2));
            }
        }
    }
    else
    {
        image_angle = lerp(image_angle, 180, 0.1);
    }
    
    if(obj_player_ghoul.x < x)
    {
        image_xscale = -1;
        image_yscale = -1;
    }
    else
    {
        image_xscale = 1;
        image_yscale = 1;
    }
    
    if(image_xscale == 1)
    {
        image_angle = clamp(image_angle, 0, 335);
    }
    else
    {
       image_angle = clamp(image_angle, 100, 201);
    }
    
    shoot_timer -= 1;
    shoot_timer = clamp(shoot_timer,0,999);
    
    
}