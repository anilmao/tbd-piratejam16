draw_sprite_stretched_ext(sprite_index, 0, x, y, string_width(text)+5,16,c_white,1);
draw_text_color(x+3,y,text,#eeffcc,#eeffcc,#eeffcc,#eeffcc,1);

if(type == "volume")
{
    draw_sprite_stretched_ext(sprite_index, 0, x+string_width(text)+8, y, 16,16,c_white,1);
    draw_sprite_stretched_ext(sprite_index, 0, x+string_width(text)+25, y, 16,16,c_white,1);
    draw_text_color(x+string_width(text)+12,y,"+",#eeffcc,#eeffcc,#eeffcc,#eeffcc,1);
    draw_text_color(x+string_width(text)+29,y+1,"-",#eeffcc,#eeffcc,#eeffcc,#eeffcc,1);
    draw_text_color(x+string_width(text)+45,y,round(obj_music.music_volume*100),#eeffcc,#eeffcc,#eeffcc,#eeffcc,1);
}

if(global.debug)
{
    if(type == "volume")
    {
        draw_rectangle(bbox_left+string_width(text)+13, bbox_top+5, bbox_right+string_width(text)+8, bbox_bottom, true);
        draw_rectangle(bbox_left+string_width(text)+30, bbox_top+5, bbox_right+string_width(text)+25, bbox_bottom, true);
    }
    else
    {
        draw_rectangle(bbox_left, bbox_top+5, bbox_right + string_width(text)-5, bbox_bottom,true);
    }
}
