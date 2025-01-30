firedelay = firedelay - 1;
firedelay = clamp(firedelay, -5, 999);

switch(weapon_type)
{
    case "pistol":
    case "shotgun":
    case "energy":    
        scr_NormalWeapon()
    break;
    case "biggun1":
    case "biggun2":
        scr_BigGun()
    break;
}