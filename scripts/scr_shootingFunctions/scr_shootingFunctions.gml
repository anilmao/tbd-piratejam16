function scr_applyRecoil(obj_id)
{
    with(obj_id)
    {
        h_speed = lengthdir_x(weapon_recoil,image_angle+180)
        v_speed = lengthdir_y(weapon_recoil,image_angle*-1)
    }
}