%% Tester for throwBall2.m (optional)
v = 4;
distances = zeros(13, 1);
thetas = linspace(0, 60, 13);
idx = 1
for theta = thetas
    distances(idx) = throwBall2(v, theta);
    idx = idx + 1
end
figure
plot(thetas, distances, 'k', 'LineWidth', 2)
xlabel('Initial Angle (deg)')
ylabel('Distance thrown (m)')
title('Distance of ball thrown as a function of release angle')
