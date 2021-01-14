%% Functions (Optional)
function distance = throwBall2(v, theta)
hInit = 1.5; %intitial height of ball at release in meters
g = 9.8; %gravitational acceleration in m/s^2
time = linspace(0, 10, 1000);

% Distance & Height equations
x = v*cos(theta*(pi/180))*time; %distance
y = hInit + v*sin(theta*(pi/180))*time - (1/2)*g*time.^2; %height

% Where the ball hits the ground
negatives = find(y < 0);
if length(negatives) < 1
    disp('The ball does not hit the ground in 10 seconds')
    distance = NaN;
else
    idx = negatives(1);
    distance= x(idx);
    disp(['The ball hits the ground at a distance of ', num2str(distance), ' meters.'])
end
end