draw_sprite_stretched_ext(sprite_index, 0, x, y, string_width(text)+5,16,c_white,1);
draw_text_color(x+3,y,text,#eeffcc,#eeffcc,#eeffcc,#eeffcc,1);

if(global.debug)
{
    draw_rectangle(bbox_left, bbox_top+5, bbox_right + string_width(text)-5, bbox_bottom,true);
}
