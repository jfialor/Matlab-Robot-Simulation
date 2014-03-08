%
% Script3
%

%% Set up the figure
figure;
axis ([-1.5 1.5 -1 1]);

% Generate joint angles : 
% left_shoulder_yaw
% left_shoulder_pitch
% left_shoulder_roll
% left_elbow
% left_shoulder_yaw
% left_shoulder_pitch
% left_shoulder_roll
% left_elbow
% Neck_yaw

n = 100;

left_shoulder_yaw   =  (pi/4)*sin((2*pi/25)*(1:n));
left_shoulder_pitch =  (pi/4)*sin((2*pi/25)*(1:n));
left_shoulder_roll  =  (pi/4)*sin((2*pi/25)*(1:n));
left_elbow          =  (pi/4)*(sin((2*pi/25)*(1:n)) + 1);


right_shoulder_yaw   =  -(pi/4)*sin((2*pi/25)*(1:n));
right_shoulder_pitch =  -(pi/4)*sin((2*pi/25)*(1:n));
right_shoulder_roll  =  -(pi/4)*sin((2*pi/25)*(1:n));
right_elbow          =  (pi/4)*(sin((2*pi/25)*(1:n)) + 1);

%%
for i = 1:n
    
    % Set up the camera parameters
    camera_yaw = i*(2*pi/180);
    camera_pitch = (pi/6);
    
    camera_Tz = 10;
    T = [0 0 -camera_Tz]';
    
    gCW = CameraTransform (camera_yaw, camera_pitch, T);
    
    % Clear the axes
    cla;
    
    % Call user routine to draw figure
    DrawRobot3D (gCW, ...
                 left_shoulder_yaw(i), left_shoulder_pitch(i), left_shoulder_roll(i),  left_elbow(i), ...
                 right_shoulder_yaw(i), right_shoulder_pitch(i), right_shoulder_roll(i),  right_elbow(i));

    
    % Pause so you can see the result
    pause (0.2);
end