if(room != rm_menu)
{
    current_track = music_test;
    if(!audio_is_playing(current_track))
    {
        audio_play_sound(current_track,1,true,music_volume,undefined,1);
    }
}
