for (var i = 0; i < instance_number(obj_collisionBlock); i++)
{
    var inst = instance_find(obj_collisionBlock, i);
    if (inst.door_index == "cage")
    {
        instance_destroy(inst);
        break;
    }
}

layer_destroy("Ghouls");
var ghoul1 = instance_create_layer(416, 160, "Player", obj_ghoul);
ghoul1.ghoul_number = 0;
var ghoul2 = instance_create_layer(435, 183, "Player", obj_ghoul);
ghoul2.ghoul_number = 1;
var ghoul3 = instance_create_layer(444, 150, "Player", obj_ghoul);
ghoul3.ghoul_number = 2;

global.ghouls[0] = ghoul1;
global.ghouls[1] = ghoul2;
global.ghouls[2] = ghoul3;