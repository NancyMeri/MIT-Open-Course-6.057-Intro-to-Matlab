%% Plotting 5 Concentric Circles
figure
colormap ('jet')
[x1, y1] = getCircle([0, 0], 1)
plot(x1, y1, 'b', 'LineWidth', 4)
hold on
[x2, y2] = getCircle([0, 0], 2)
plot(x2, y2, 'c', 'LineWidth', 4)
[x3, y3] = getCircle([0, 0], 3)
plot(x3, y3, 'g', 'LineWidth', 4)
[x4, y4] = getCircle([0, 0], 4)
plot(x4, y4, 'y', 'LineWidth', 4)
[x5, y5] = getCircle([0, 0], 5)
plot(x5, y5, 'Color', [1, 0.5,0], 'LineWidth', 4)
axis equal
