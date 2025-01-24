if(place_meeting(x,y+2,obj_collisionBlock))
{
    grounded = true;
}
else
{
    grounded = false;
}

firedelay = firedelay - 1;
firedelay = clamp(firedelay, -5, 999);

switch(weapon_type)
{
    case "pistol":
    case "shotgun":
        scr_NormalWeapon()
    break;
    case "biggun1":
    case "biggun2":
        scr_BigGun()
    break;
}