if(collision_circle(x,y,30,obj_weapon,false,true) && !in_weapon)
{   
    nearest_weapon = instance_nearest(x,y,obj_weapon);
    if(keyboard_check_pressed(vk_space))
    {
        keyboard_clear(vk_space); //this clears the space key so the player doesnt instantly get out of the weapon/enter the weapon when they press space (it works)
        in_weapon = true;
        with(nearest_weapon)
        {
            possessed = true;
        }
    }
}

if(in_weapon)
{
    x = lerp(x, nearest_weapon.x,0.1);
    y = lerp(y, nearest_weapon.y,0.1);
    sprite_index = spr_player_possess;
    if(image_alpha != 0)
    {
        image_alpha -= 0.1;
    }
}
else
{
    visible = true;
    sprite_index = spr_player_idle;
    x = lerp(x, mouse_x, 0.1);
    y = lerp(y, mouse_y, 0.1);
    if(image_alpha != 1)
    {
        image_alpha += 0.1;
    }
}