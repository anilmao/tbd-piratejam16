if(cannonball)
{
    sprite_index = spr_cannonball;
}
if(energy_bullet)
{
    sprite_index = spr_bullet_energy;
}


var target = instance_place(x,y,obj_door); //remove this later
if(target)
{
    instance_create_layer(target.x, target.y, "Bullets", obj_explosion);
    audio_play_sound(snd_explosion,1,false);
    instance_destroy(target);
    instance_destroy();
}

var enemy = instance_place(x,y,obj_enemy);
if(enemy && !enemy_bullet)
{
    with(enemy)
    {
        if(enemy_state != "dead")
        { 
            enemy_state = "dead";
            if(other.energy_bullet == false && other.cannonball == false)
            {
                instance_destroy(other);
            }
        }
    }
}

if(place_meeting(x,y,obj_collisionBlock))
{
    instance_destroy();
}