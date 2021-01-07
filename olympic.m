%% Plotting the Olympic Logo
figure
colormap ('jet')
[x1, y1] = getCircle([-1, 0], 0.45)
plot(x1, y1, 'b', 'LineWidth', 4)
hold on
[x2, y2] = getCircle([-0.5, -0.5], 0.45)
plot(x2, y2, 'y', 'LineWidth', 4)
[x3, y3] = getCircle([0, 0], 0.45)
plot(x3, y3, 'k', 'LineWidth', 4)
[x4, y4] = getCircle([0.5, -0.5], 0.45)
plot(x4, y4, 'g', 'LineWidth', 4)
[x5, y5] = getCircle([1, 0], 0.45)
plot(x5, y5, 'r', 'LineWidth', 4)
axis equal
