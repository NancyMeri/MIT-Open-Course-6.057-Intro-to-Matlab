%% Throw Ball (Optional)
hInit = 1.5; %intitial height of ball at release in meters
g = 9.8; %gravitational acceleration in m/s^2
vInit = 4; %velocity of ball at release in m/s
theta = 45; %angle of the velocity vector at time of release in degrees
time = linspace(0, 1, 1000);

% Distance & Height equations
x = vInit*cos(theta*(pi/180))*time; %distance
y = hInit + vInit*sin(theta*(pi/180))*time - (1/2)*g*time.^2; %height

% Where the ball hits the ground
negatives = find(y < 0);
idx = negatives(1);
distHits = x(idx);
disp(['The ball hits the ground at a distance of ', num2str(distHits), ' meters.'])

%Plotting the ball's trajectory
figure
plot(x, y)
xlabel('Distance (m)')
ylabel('Ball Height (m)')
title('Ball Trajectory')
hold on
a = 0:1/999:max(x);
b = zeros(1, length(a));
plot(a, b, 'k--')
