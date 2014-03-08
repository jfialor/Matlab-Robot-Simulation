function DrawRobot3D (gCW, left_shoulder_yaw, left_shoulder_pitch, ...
                      left_shoulder_roll, left_elbow, ...
                      right_shoulder_yaw, right_shoulder_pitch,...
                      right_shoulder_roll, right_elbow)
  % Draws a 3D Robot on the coordinate plane by using PerspectiveProjection
  % to project a scaled cube and its transformation on to the screen
 
 scale_gird = Scale3D(4,2,2);
 scale_head = Scale3D(2,2,2);
 scale_arms = Scale3D(3,1,1);
 trans_rshoul = [-3.5 0 0];
 trans_lshoul = [3.5 0 0];
 trans_lelbow = [3 0 0];
 trans_relbow = [-3 0 0];
 trans_neck = [0 1.5 0];
 trans_head = [0 3 0];
 
 lshoul_rot = Rotation3D('y',left_shoulder_yaw)* ...
              Rotation3D('x',left_shoulder_pitch)* ...
              Rotation3D('z',left_shoulder_roll);
 rshoul_rot = Rotation3D('y',right_shoulder_yaw)* ...
              Rotation3D('x',right_shoulder_pitch)* ...
              Rotation3D('z',right_shoulder_roll);
 lelbow_rot = Rotation3D('z',left_elbow/(pi));
 relbow_rot = Rotation3D('z',-right_elbow/(pi/1.5));
 
 left_shoulder = Translation3D(trans_lshoul)*lshoul_rot;
 right_shoulder = Translation3D(trans_rshoul)*rshoul_rot;
 the_left_elbow =  gCW * left_shoulder * ... 
                   Translation3D(trans_lelbow) * lelbow_rot;
 the_right_elbow = gCW * right_shoulder * ...
                   Translation3D(trans_relbow) * relbow_rot;
             
 %test_vector = [1.7 0 0 1];
 %trans_test = gCW * test_vector * lshoul_rot * scale_arms * Box3D() ;
 %main = Translation3D(trans_test);

 l_shoul = PerspectiveProjection(gCW * left_shoulder*scale_arms*Box3D());
 r_shoul = PerspectiveProjection(gCW * right_shoulder* scale_arms*Box3D());
 lelbow = PerspectiveProjection(the_left_elbow * scale_arms*Box3D());
 relbow = PerspectiveProjection(the_right_elbow * scale_arms*Box3D());
 
 gird = PerspectiveProjection(gCW * scale_gird * Box3D());
 neck = PerspectiveProjection(gCW * Translation3D(trans_neck)*Box3D());
 head = PerspectiveProjection(gCW *Translation3D(trans_head)*scale_head*...
        Box3D());
  
 DrawBox3D(gird);
 DrawBox3D(neck);
 DrawBox3D(head);
 DrawBox3D(lelbow);
 DrawBox3D(l_shoul);
 DrawBox3D(r_shoul);
 DrawBox3D(relbow);


end

