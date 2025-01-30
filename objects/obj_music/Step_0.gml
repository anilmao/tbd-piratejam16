if(current_track != noone)
{
    if(room != rm_menu)
    {
        if(!audio_is_playing(current_track))
        {
            audio_play_sound(current_track,1,true,music_volume,undefined,1);
        }
    }
}

if(keyboard_check_pressed(vk_up)) //volume up quickbind
{
    music_volume += 0.1;
    audio_group_set_gain(ag_Music,music_volume, 0.1);
}
if(keyboard_check_pressed(vk_down)) //volume down quickbind
{
    music_volume -= 0.1;
    audio_group_set_gain(ag_Music,music_volume, 0.1);
}

music_volume = clamp(music_volume, 0, 1);
