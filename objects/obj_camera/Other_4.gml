if(room == rm_menu)
{
    if(instance_exists(obj_target))
    {
        follow = obj_target
    }
}
else
{
    if(instance_exists(obj_player_ghoul))
    {
        follow = obj_player_ghoul;
    }
}
