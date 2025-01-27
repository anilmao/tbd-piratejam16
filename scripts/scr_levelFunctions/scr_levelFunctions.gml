function scr_warp(warp_room_, warp_x_ , warp_y_, warp_spd_ = 1, warp_color_ = c_black)
{
    if(!instance_exists(obj_fader))
    {
        var mywarper = instance_create_depth(x,y,-9999,obj_fader);
        mywarper.warp_room = warp_room_;
        mywarper.warp_x = warp_x_;
        mywarper.warp_y = warp_y_;
        mywarper.fade_color = warp_color_;
    }
}
