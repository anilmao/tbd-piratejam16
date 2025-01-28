{
  "$GMRoom":"v1",
  "%Name":"rm_tut_0",
  "creationCodeFile":"",
  "inheritCode":false,
  "inheritCreationOrder":false,
  "inheritLayers":false,
  "instanceCreationOrder":[
    {"name":"inst_7E02B35A","path":"rooms/rm_tut_0/rm_tut_0.yy",},
    {"name":"inst_247971C1","path":"rooms/rm_tut_0/rm_tut_0.yy",},
    {"name":"inst_7A57F497","path":"rooms/rm_tut_0/rm_tut_0.yy",},
    {"name":"inst_411F4E2E","path":"rooms/rm_tut_0/rm_tut_0.yy",},
    {"name":"inst_74C784BB","path":"rooms/rm_tut_0/rm_tut_0.yy",},
    {"name":"inst_54BEFDD4","path":"rooms/rm_tut_0/rm_tut_0.yy",},
    {"name":"inst_6B123145","path":"rooms/rm_tut_0/rm_tut_0.yy",},
    {"name":"inst_294361C3","path":"rooms/rm_tut_0/rm_tut_0.yy",},
    {"name":"inst_69BFA86","path":"rooms/rm_tut_0/rm_tut_0.yy",},
  ],
  "isDnd":false,
  "layers":[
    {"$GMRInstanceLayer":"","%Name":"Player","depth":0,"effectEnabled":true,"effectType":null,"gridX":8,"gridY":8,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Player","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Bullets","depth":100,"effectEnabled":true,"effectType":null,"gridX":8,"gridY":8,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Bullets","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Gun","depth":200,"effectEnabled":true,"effectType":null,"gridX":8,"gridY":8,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Gun","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Enemies","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"$GMRInstance":"v1","%Name":"inst_69BFA86","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_69BFA86","objectId":{"name":"obj_target","path":"objects/obj_target/obj_target.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":173.0,"y":52.0,},
      ],"layers":[],"name":"Enemies","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRTileLayer":"","%Name":"Foreground","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Foreground","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":12,"SerialiseWidth":20,"TileCompressedData":[
          -7,46,4,47,37,37,55,-3,37,4,55,37,37,55,-3,37,1,55,-4,37,2,55,38,-4,0,1,69,-6,0,-2,-2147483648,-19,0,
          10,-2147483648,69,-2147483648,-2147483648,0,0,69,0,0,5,-10,6,-4,-2147483648,-5,0,2,12,34,-4,13,1,16,
          -4,13,-4,0,-2,-2147483648,-3,0,1,45,-10,46,-4,0,-5,-2147483648,1,45,-10,46,-8,6,2,8,45,-10,46,2,13,19,
          -4,13,4,25,13,13,45,-19,46,1,45,-19,46,1,45,-19,46,1,45,-10,46,
        ],"TileDataFormat":1,},"tilesetId":{"name":"tset_facilityFore","path":"tilesets/tset_facilityFore/tset_facilityFore.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"$GMRTileLayer":"","%Name":"Bg_Tiles","depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Bg_Tiles","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":12,"SerialiseWidth":20,"TileCompressedData":[-28,0,-32,52,-30,64,-10,-2147483648,-10,64,-10,-2147483648,-10,64,-9,-2147483648,1,52,-9,64,-91,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"tset_facilityFore","path":"tilesets/tset_facilityFore/tset_facilityFore.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"$GMRInstanceLayer":"","%Name":"Collisions","depth":600,"effectEnabled":true,"effectType":null,"gridX":8,"gridY":8,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"$GMRInstance":"v1","%Name":"inst_7E02B35A","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_7E02B35A","objectId":{"name":"obj_collisionBlock","path":"objects/obj_collisionBlock/obj_collisionBlock.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":9.0,"scaleY":1.0,"x":72.0,"y":136.0,},
        {"$GMRInstance":"v1","%Name":"inst_247971C1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_247971C1","objectId":{"name":"obj_collisionBlock","path":"objects/obj_collisionBlock/obj_collisionBlock.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":5.0,"x":152.0,"y":104.0,},
        {"$GMRInstance":"v1","%Name":"inst_7A57F497","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_7A57F497","objectId":{"name":"obj_collisionBlock","path":"objects/obj_collisionBlock/obj_collisionBlock.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":12.999999,"scaleY":1.0,"x":264.0,"y":72.0,},
        {"$GMRInstance":"v1","%Name":"inst_411F4E2E","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_411F4E2E","objectId":{"name":"obj_collisionBlock","path":"objects/obj_collisionBlock/obj_collisionBlock.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":8.0,"scaleY":2.0,"x":64.0,"y":16.0,},
        {"$GMRInstance":"v1","%Name":"inst_74C784BB","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_74C784BB","objectId":{"name":"obj_collisionBlock","path":"objects/obj_collisionBlock/obj_collisionBlock.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":15.0,"scaleY":1.0,"x":248.0,"y":8.0,},
        {"$GMRInstance":"v1","%Name":"inst_54BEFDD4","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_54BEFDD4","objectId":{"name":"obj_collisionBlock","path":"objects/obj_collisionBlock/obj_collisionBlock.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":6.0,"x":-8.0,"y":80.0,},
        {"$GMRInstance":"v1","%Name":"inst_6B123145","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_6B123145","objectId":{"name":"obj_collisionBlock","path":"objects/obj_collisionBlock/obj_collisionBlock.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":3.0,"x":376.0,"y":40.0,},
        {"$GMRInstance":"v1","%Name":"inst_294361C3","colour":4294967295,"frozen":false,"hasCreationCode":true,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_294361C3","objectId":{"name":"obj_fade_point","path":"objects/obj_fade_point/obj_fade_point.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":3.0,"scaleY":3.0,"x":344.0,"y":40.0,},
      ],"layers":[],"name":"Collisions","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRBackgroundLayer":"","%Name":"Background","animationFPS":15.0,"animationSpeedType":0,"colour":4278190080,"depth":700,"effectEnabled":true,"effectType":null,"gridX":8,"gridY":8,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Background","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "name":"rm_tut_0",
  "parent":{
    "name":"Rooms",
    "path":"folders/Rooms.yy",
  },
  "parentRoom":null,
  "physicsSettings":{
    "inheritPhysicsSettings":false,
    "PhysicsWorld":false,
    "PhysicsWorldGravityX":0.0,
    "PhysicsWorldGravityY":10.0,
    "PhysicsWorldPixToMetres":0.1,
  },
  "resourceType":"GMRoom",
  "resourceVersion":"2.0",
  "roomSettings":{
    "Height":180,
    "inheritRoomSettings":false,
    "persistent":false,
    "Width":320,
  },
  "sequenceId":null,
  "views":[
    {"hborder":32,"hport":360,"hspeed":-1,"hview":180,"inherit":false,"objectId":null,"vborder":32,"visible":true,"vspeed":-1,"wport":640,"wview":320,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings":{
    "clearDisplayBuffer":true,
    "clearViewBackground":false,
    "enableViews":true,
    "inheritViewSettings":false,
  },
  "volume":1.0,
}