switch(weapon_type)
{
    case "pistol":
    case "shotgun":
        draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1);
        
        if(selected && outline_sprite != -1)
        {
            draw_sprite_ext(outline_sprite,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,0.5);
        }   
    break;
    case "biggun1":
        image_speed = 0;
        draw_sprite(spr_biggun_base,0,x+2,y+5)
        if(!flipped)
        {
            draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1);
        }
        else
        {
            draw_sprite_ext(sprite_index,image_index,x+2,y,image_xscale,image_yscale,image_angle,c_white,1);
        }
    case "biggun2":
        draw_sprite(spr_biggun_base,0,x+2,y+5)
        if(!flipped)
        {
            draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1);
        }
        else
        {
           draw_sprite_ext(sprite_index,image_index,x+2,y,image_xscale,image_yscale,image_angle,c_white,1);
        }
    break;
}
