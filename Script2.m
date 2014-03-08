%
% Script 2
%

%% Set up Coordinates

XY1 = [-1 0; -4 0; -4 5; -1 5; -1 4; -3 4; -3 1; -1 1];

fv1 = Extrude (XY1, -1, 1);

XY2 = [1 0; 3 0; 3 4; 4 4; 4 5; 1 5; 1 4; 2 4; 2 1; 1 1];

fv2 = Extrude (XY2, -1, 1);


%% Set up the figure
figure;
axis ([-2 2 -1.5 1.5]);

for i = 1:100
    
    % Set up the camera parameters
    yaw = i*(5*pi/180);
    pitch = (pi/6);
    
    Tz = 10 + 2*sin(yaw);
    T = [0 0 -Tz]';
    
    % Clear the axes
    cla;
    
    % Project the points into the camera
    uv = ProjectPoints (fv1.vertices', yaw, pitch, T);

    fv.Vertices = uv';
    fv.faces = fv1.faces;
    
    patch (fv, 'FaceColor', 'none');
    
    
    % Project the points into the camera
    uv = ProjectPoints (fv2.vertices', yaw, pitch, T);

    fv.Vertices = uv';
    fv.faces = fv2.faces;
    
    patch (fv, 'FaceColor', 'none');
    
    
    % Pause so you can see the result
    pause (0.2);
end