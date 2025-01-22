depth = -999;

if(!instance_exists(obj_player_ghoul))
{
    exit;
}

var cam_width = camera_get_view_width(view_camera[0]);
var cam_height = camera_get_view_height(view_camera[0]);

var cam_x = obj_player_ghoul.x - cam_width/2;
var cam_y = obj_player_ghoul.y - cam_height/2;

cam_x = clamp(cam_x, 0, room_width - cam_width);
cam_y = clamp(cam_y, 0, room_height - cam_height);

camera_set_view_pos(view_camera[0],cam_x, cam_y);