function scr_applyRecoil(obj_id)
{
    with(obj_id)
    {
        h_speed = lengthdir_x(weapon_recoil,image_angle+180)
        v_speed = lengthdir_y(weapon_recoil,image_angle*-1)
    }
}

function scr_shootBullet(obj_id)
{
    with(obj_id)
    {
        ammo_count -= 1;
        with(instance_create_layer(x,y,"Bullets",obj_bullet)) 
        {
            speed = other.bullet_speed
            direction = other.image_angle
            image_angle = direction
        }
    }
}