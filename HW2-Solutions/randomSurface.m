%% Interpolation and surface plots
Z0 = rand(5);
vec1 = 1:5;
[X0, Y0] = meshgrid(vec1, vec1);
vec2 = 1:0.1:5;
[X1, Y1] = meshgrid(vec2, vec2);
Z1 = interp2(X0, Y0, Z0, X1, Y1, 'cubic');
surf(X1, Y1, Z1)
colormap('hsv')
shading('interp')
hold on
contour(X1, Y1, Z1, 15)
colorbar
caxis([0 1])
