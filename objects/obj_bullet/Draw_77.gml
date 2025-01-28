var target = instance_place(x,y,obj_target);
if(target)
{
    instance_create_layer(target.x, target.y, "Gun", obj_pistol);
    instance_destroy(target);
    instance_destroy();
}

if(place_meeting(x,y,obj_collisionBlock))
{
    instance_destroy();
}