%
% Script1 : Script for running part 1 of Project1
%

% Create the figure and the axes
figure;
axis ([-10 10 -10 10]);

% Generate joint angles : left shoulder, right shoulder, left elbow, right
% elbow

n = 100;

left_shoulder  =  (pi/4)*sin((2*pi/25)*(1:n));
right_shoulder =  (pi/4)*sin((2*pi/25)*(1:n));
left_elbow     =  (pi/4)*(sin((2*pi/25)*(1:n)) + 1);
right_elbow    =  (pi/4)*(sin((2*pi/25)*(1:n)) + 1);

%% For each choice of joint angles
for i = 1:n
    
    % Clear axis
    cla; 
    
    % Call user routine to draw figure
    DrawRobot2D (left_shoulder(i), right_shoulder(i), left_elbow(i), right_elbow(i));

    % pause so you can see the result
    pause (0.1);
    
    % Note that you could use getframe here and store the frames for later
    % viewing
end