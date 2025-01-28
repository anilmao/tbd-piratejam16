var target = instance_place(x,y,obj_target); //remove this later
if(target)
{
    instance_create_layer(target.x, target.y, "Gun", obj_pistol);
    instance_destroy(target);
    instance_destroy();
}

var enemy = instance_place(x,y,obj_enemy);
if(enemy)
{
    with(enemy)
    {
        if(enemy_state != "dead")
        { 
            enemy_state = "dead";
            instance_destroy(other);
        }
    }
}

if(place_meeting(x,y,obj_collisionBlock))
{
    instance_destroy();
}