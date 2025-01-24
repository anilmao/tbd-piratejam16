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
        
        if(ammo_count <= 0 || firedelay > 0)
            can_shoot = false;
        else
            can_shoot = true;
        
        if(can_shoot)
        {
            if(mouse_check_button_pressed(mb_left)) //regular shot
            {
                scr_shootBullet(id);
            }
        }
    }
}