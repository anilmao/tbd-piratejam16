draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1);

if(selected && outline_sprite != -1)
{
    draw_sprite_ext(outline_sprite,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,0.5);
}