function scr_NormalWeapon()
{
    if(place_meeting(x,y+2,obj_collisionBlock))
    {
        grounded = true;
    }
    else
    {
        grounded = false;
    }
    
    if(possessed)
    {
        selected = false;
        persistent = true;
        
        if(ammo_count < 999)
        {
            if(ammo_count <= 0)
            can_shoot = false;
            else
                can_shoot = true;
        }
        else
        {
            can_shoot = true;
        }
        
        if(can_shoot)
        {
            if(firedelay < 0)
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
                if(mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right))
                {
                    switch(weapon_type)
                    {
                        case "pistol":
                            audio_play_sound(snd_pistol_fire,0,false,1,undefined,random_range(0.8,1.2));
                        break;
                        case "shotgun":
                            audio_play_sound(snd_shotgun_fire,0,false,1,undefined,random_range(0.8,1.2));
                        break;
                        case "energy": //end weapon 
                               
                        break;
                    }
                }
            }
        }
        else
        {
            if(firedelay < 0)
            {
                if(mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right)) //no more bullets
                {
                    if(!audio_is_playing(snd_gun_empty))
                    {
                        audio_play_sound(snd_gun_empty,0,false);
                    }
                }
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
        
        scr_pushobject(); //decreased the increment from gamespeed to 5 frames, works good so far (not fully tested) with WAY less framedrops
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
            scr_pushobject(); //decreased the increment from gamespeed to 5 frames, works good so far (not fully tested) with WAY less framedrops
        }
        
        //this shit is very hacky but its gonna get us through the jam whilst looking decent
        if(collision_circle(x,y,obj_player_ghoul.player_possess_radius,obj_player_ghoul,false,true) && instance_position(mouse_x,mouse_y,self))
        {
            selected = true;
        }
        else
        {
            selected = false;
        }
    }
    
    v_speed += weapon_gravity; //Apply Gravity
}
function scr_BigGun()
{
    if(possessed)
    {
        selected = false;
        
        if(ammo_count <= 0)
            can_shoot = false;
        else
            can_shoot = true;
        
        if(can_shoot)
        {
            if(weapon_type == "biggun2")
            {
                if(mouse_check_button(mb_left)) //regular shot
                {
                    if(firedelay < 0)
                    {
                        scr_shootBullet(id);
                        image_speed = 0.6;
                    }
                    
                    if(!audio_is_playing(snd_turret_fire_loop)) 
                    { 
                        audio_play_sound(snd_turret_fire_loop,0,true);
                    }
                }
                else
                {
                    if(weapon_type == "biggun2")
                    {
                        image_index = 0;
                        image_speed = 0;
                        audio_stop_sound(snd_turret_fire_loop);
                    }
                }
            }
        }
        else
        {
            if(weapon_type == "biggun2")
            {
                image_index = 0;
                image_speed = 0;
                audio_stop_sound(snd_turret_fire_loop);
            }
            
            if(mouse_check_button(mb_left)) //no more bullets
            {
                if(!audio_is_playing(snd_gun_empty))
                {
                    audio_play_sound(snd_gun_empty,0,false);
                }
            }
        }
    }
    else
    {
        if(flipped == 1)
        {
            if(image_angle != 180)
            {
                image_angle = lerp(image_angle, -180, 0.2);
            }
        }
        else
        {
            if(image_angle != 0)
            {
                image_angle = lerp(image_angle, 0, 0.2);
            }
        }
        
        //this shit is very hacky but its gonna get us through the jam whilst looking decent
        if(collision_circle(x,y,obj_player_ghoul.player_possess_radius,obj_player_ghoul,false,true) && instance_position(mouse_x,mouse_y,self))
        {
            selected = true;
        }
        else
        {
            selected = false;
        }
    }
}