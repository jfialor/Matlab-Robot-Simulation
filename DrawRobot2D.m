function DrawRobot2D (left_shoulder_angle,right_shoulder_angle,...
                       right_elbow_angle,left_elbow_angle)
%Draws a 2D Robot based on the specified joint angles on the 
% specified coordinate axis. uses Box2D to draw each box

DrawTransformedBox2D(Scale2D(4,2));
DrawTransformedBox2D(Scale2D(1,1)*Translation2D(0,1.5));
DrawTransformedBox2D(Scale2D(2,2)*Translation2D(0,1.5));

arm_scale = Scale2D(3,1);

l_shoul = Rotation2D(left_shoulder_angle)*Translation2D(3.5,0)*arm_scale;
r_shoul = Rotation2D(right_shoulder_angle)*Translation2D(-3.5,0)*arm_scale;
r_elbow = r_shoul*Rotation2D(right_elbow_angle)*Translation2D(-1,0);
l_elbow = l_shoul*Rotation2D(left_elbow_angle)*Translation2D(1,0);

DrawTransformedBox2D(l_shoul);

DrawTransformedBox2D(r_shoul);

DrawTransformedBox2D(r_elbow);

DrawTransformedBox2D(l_elbow);




end

