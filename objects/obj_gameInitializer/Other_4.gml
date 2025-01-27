if(room == rm_menu)
{
   instance_deactivate_object(obj_player_ghoul); 
   window_set_cursor(cr_arrow);
}
else
{
    instance_activate_object(obj_player_ghoul);
    window_set_cursor(cr_cross);
}