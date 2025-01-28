function scr_GetToGun(inst)
{
    with(inst) 
    { 
        possessed = true;
    }
    my_weapon = inst.id;
    in_weapon = true;
}

function scr_WeaponSwap(weapon)
{
    my_weapon = weapon.id;
    my_weapon.possessed = true;
    in_weapon = false;
}