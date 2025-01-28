draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha);

switch(enemy_state)
{
    case "chill":
        draw_sprite_ext(spr_enemy_hands_down,enemy_weapon_type,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha);
    break;
    case "alert":
        draw_sprite_ext(spr_enemy_hands_alert,enemy_weapon_type,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha);
    break;
    case "dead":
        sprite_index = spr_enemy_dead;
    break;
}

draw_line_width_color(x,y,obj_player_ghoul.x,obj_player_ghoul.y,2,c_red,c_red);