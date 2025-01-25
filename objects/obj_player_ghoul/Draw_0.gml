draw_sprite_ext(sprite_index, image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha);

if(in_weapon)
{
    image_alpha = 0;
    image_xscale = 1;
}
else
{
    if(my_weapon != noone)
    {
        image_angle = point_direction(x,y,my_weapon.x,my_weapon.y);
        image_xscale = -1;
    }
    image_alpha = 0.5;
}

if(at_weapon)
{
    if(global.show_ui) //UI
    {   
        var ammo_ui_x = camera_get_view_x(view_camera[0])+235;
        var ammo_ui_y = camera_get_view_y(view_camera[0])+150;
        
        var ammo_ui_w = 11;
        
        draw_sprite(spr_ammo_ui,0,ammo_ui_x,ammo_ui_y);
        
        for (var i = 0; i < my_weapon.ammo_count; i++)
        {
            var bullet_ui_offset_x = 4
            var bullet_ui_offset_y = 8
            
            if(i <= 22)
            {
                draw_sprite(spr_bullet_ui,0,camera_get_view_x(view_camera[0])+270 + ((i mod ammo_ui_w) * bullet_ui_offset_x), camera_get_view_y(view_camera[0])+162 + ((i div ammo_ui_w) * bullet_ui_offset_y));
            }
        }
    }
}

//draw_circle_color(x,y,player_possess_radius,#b0e4e4,#b0e4e4,true);