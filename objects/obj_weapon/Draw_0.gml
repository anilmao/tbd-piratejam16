switch(weapon_type)
{
    case "pistol":
    case "shotgun":
    case "energy":    
        draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,fake_angle,image_blend,1);
    break;
    case "biggun1":
        image_speed = 0;
        draw_sprite(spr_biggun_base,0,x,y+5)
        draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,1);
    break;
    case "biggun2":
        draw_sprite(spr_biggun_base,0,x,y+5)
        draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,1);
    break;
}

if(selected && outline_sprite != -1)
{
    if(weapon_type == "biggun1" || weapon_type == "biggun2")
    {
        draw_sprite_ext(spr_biggun_base_outline,0,x,y+5,1,1,0,c_white,0.5);
        draw_sprite_ext(outline_sprite,0,x,y,image_xscale,image_yscale,image_angle,c_white,0.5);
    }
    else
    {
      draw_sprite_ext(outline_sprite,0,x,y,image_xscale,image_yscale,fake_angle,c_white,0.5);
    }
}
