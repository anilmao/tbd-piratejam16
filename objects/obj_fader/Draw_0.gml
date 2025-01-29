if(instance_exists(obj_player_ghoul))
{

    draw_circle_color(obj_player_ghoul.x, obj_player_ghoul.y,fade_radius,fade_color,fade_color,false);
}
else 
{
    if(instance_exists(obj_target))
    {
        draw_circle_color(obj_target.x, obj_target.y,fade_radius,fade_color,fade_color,false);
    }
}