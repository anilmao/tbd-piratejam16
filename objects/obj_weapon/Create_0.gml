weapon_type = "undefined";
weapon_direction = 0;
weapon_recoil = 0;
if(sprite_exists(sprite_index))
    weapon_sprite = sprite_index;
else
    weapon_sprite = spr_collisionBlock;
barrel_offset = 0;
ammo_max = 0;
ammo_count = 0;
bullet_type = noone;
bullet_damage = 0;
bullet_speed = 0;
possessed = false;
can_shoot = false;
stationary = false;

h_speed = 0;
v_speed = 1;
weapon_gravity = 2;
grounded = false;
