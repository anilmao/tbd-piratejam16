function scr_GetToGun(inst)
{
    with(inst) 
    { 
        possessed = true;
        other.my_weapon = id;
        other.in_weapon = true;
    }
}

function scr_WeaponSwap(weapon)
{
    other.my_weapon = id;
    other.in_weapon = false;
}