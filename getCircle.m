%% Plot a Circle
function [x, y] = getCircle(center, r)
t = 0:pi/16:2*pi
x = r.*cos(t) + center(1)
y = r.*sin(t) + center(2)
end
