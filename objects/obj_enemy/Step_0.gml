switch(enemy_state) //enemy state machine / check each script for each state
{
    case "chill":
        scr_enemy_chill();
    break;
    case "dead":
        scr_enemy_dead();
    break;
    case "scared":
        scr_enemy_scared();
    break;
    case "alert":
        scr_enemy_alert();
    break;
}