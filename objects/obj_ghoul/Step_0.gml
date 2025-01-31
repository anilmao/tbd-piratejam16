switch (ghoul_number)
{
    case 0:
        x = lerp(x, obj_player_ghoul.x, 0.1);
        y = lerp(y, obj_player_ghoul.y, 0.1);
        image_index = 0;
    break;
    case 1:
        x = lerp(x, global.ghouls[0].x, 0.1);
        y = lerp(y, global.ghouls[0].y, 0.1);
        image_index = 1;
    break;
    case 2:
        x = lerp(x, global.ghouls[1].x, 0.1);
        y = lerp(y, global.ghouls[1].y, 0.1);
        image_index = 2;    
    break;
}