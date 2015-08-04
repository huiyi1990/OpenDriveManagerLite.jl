 mgr = OdrManagerLite()
 @test loadfile(mgr, "sample1.1.xodr")
 printdata(mgr)
 
 pos = create_position(mgr)

 activate_position(mgr, pos)
 get_trackpos(mgr)
 get_lanepos(mgr)
 get_inertialpos(mgr)
 get_footpoint(mgr)
 value = TrackCoord(0, 1.0 ,2.0 ,3.0 ,4.0 ,5.0 ,6.0)
 set_pos(mgr, value)
 set_trackpos_s_t(mgr, 1, 1.0, 2.0)
 set_trackpos_track_coord(mgr, value)
 value = LaneCoord(0, 1.0 ,2.0 ,3.0 ,4.0 ,5.0 ,6.0, 1, 0.0)
 set_pos_with_lanecoord(mgr, value)
 set_lanepos(mgr, 1, 1, 2.0, 3.0)
 set_lanepos_with_lanecoord(mgr, value)
 value = Coord(1.0 ,2.0 ,3.0 ,4.0 ,5.0 ,6.0)
 set_pos_with_coord(mgr, value)
 set_inertialpos(mgr, 1.0, 2.0, 3.0)
 convert_track_to_inertial(mgr)
 convert_inertial_to_track(mgr)
 convert_lane_to_inertial(mgr)
 convert_inertial_to_lane(mgr)
 print_odrmanagerlite(mgr, 0)
 get_curvature(mgr)

 get_track_len(mgr, 1)
 get_lane_width(mgr)
 copy_foot_point_to_inertial(mgr)
