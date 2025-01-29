gpu_set_blendenable(false);

if(game_paused)
{
    surface_set_target(application_surface);
    
    if(surface_exists(game_pause_surf))
    {
        draw_surface(game_pause_surf,0,0);    
    }
    else
    {
        game_pause_surf = surface_create(1280,720);
        buffer_set_surface(game_pause_surf_buffer,game_pause_surf,0);
    }
    surface_reset_target();
}

if(keyboard_check_pressed(vk_escape) || keyboard_check_pressed(ord("P")) && !instance_exists(obj_fader) && room != rm_menu)
{
    if(game_paused)
    {
        game_paused = false;
        instance_activate_all();
        if(audio_is_paused(obj_music.current_track))
        {
            audio_resume_sound(obj_music.current_track);
        }
        
        if(surface_exists(game_pause_surf))
        {
            surface_free(game_pause_surf);
        }
        if(buffer_exists(game_pause_surf_buffer))
        {
            buffer_delete(game_pause_surf_buffer);
        }
    }
    else 
    {
        audio_play_sound(snd_blip,1,false);
        if(!audio_is_paused(obj_music.current_track))
        {
            audio_pause_sound(obj_music.current_track);
        }
        
        game_paused = true;
        instance_deactivate_all(true);
        
        game_pause_surf = surface_create(1280,720);
        surface_set_target(game_pause_surf);
        draw_surface(application_surface,0,0);
        surface_reset_target();
        
        if(buffer_exists(game_pause_surf_buffer))
        {
            buffer_delete(game_pause_surf_buffer);
        }
        game_pause_surf_buffer = buffer_create(1280 * 720, buffer_fixed, 1);
        buffer_get_surface(game_pause_surf_buffer,game_pause_surf,0);
    }
}

gpu_set_blendenable(true);
