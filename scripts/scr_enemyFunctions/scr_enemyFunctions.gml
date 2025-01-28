function scr_enemy_chill()
{
    if(collision_line(x,y,obj_player_ghoul.x,obj_player_ghoul.y,obj_player_ghoul,false,true) && !collision_line(x,y,obj_player_ghoul.x,obj_player_ghoul.y,obj_collisionBlock,false,true))
    {
        if(enemy_weapon_type != 0)
        {
            enemy_state = "alert";
        }
        else 
        {
            enemy_state = "scared";
        }
    }
}
function scr_enemy_dead()
{
    image_speed = random_range(0.3,0.5);
    
    if(round(image_index) == 7)
    {
        image_index = 7;
        image_speed = 0;
        instance_destroy();
    } 
}