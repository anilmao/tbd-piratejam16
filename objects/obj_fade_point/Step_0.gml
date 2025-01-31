if(room != rm_lastroom)
{ 
    if(place_meeting(x,y,obj_player_ghoul))
    {
        scr_warp(warp_room,warp_x,warp_y,warp_spd, fade_color);
    }
}
else
{
    if(place_meeting(x,y,obj_player_ghoul))
    {
        alarm[0] = 20;
        obj_player_ghoul.my_weapon.anchored = true;
    }  
}
