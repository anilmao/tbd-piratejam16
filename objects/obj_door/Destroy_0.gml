for (var i = 0; i < instance_number(obj_collisionBlock); i++)
{
    var inst = instance_find(obj_collisionBlock, i);
    if (inst.door_index == door_index){
        instance_destroy(inst);
        break;
    }
}