if(enemy_state == "chill")
{
    if(collision_line(x,y,obj_player_ghoul.x,obj_player_ghoul.y,obj_player_ghoul,false,true))
    {
        show_debug_message("I SEE THE GHOUL");   
    }
}
