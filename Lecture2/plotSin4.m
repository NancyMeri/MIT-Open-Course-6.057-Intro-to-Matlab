%% Exercise: 3D Plots
function plotSin3(f1, f2)
if nargin == 1
    figure
    x = linspace(0, 2*pi, 16*f1) %16 points per period
    plot(x, sin(f1*x), 'rs--', 'LineWidth', 2, 'MarkerFaceColor', 'b')
else
    figure
    x = linspace(0, 2*pi, 16*f1) %16 points per period
    y = linspace(0, 2*pi, 16*f2) %16 points per period
    [X, Y] = meshgrid(x, y);
    Z = sin(f1*X) + sin(f2*Y)
    subplot(2, 1, 1)
    colorbar
    colormap(hot)
    imagesc(Z)
    axis xy
    subplot(2, 1, 2)
    surf(x, y, Z)
    
    %x2 = linspace(0, 2*pi, 16*f2)
    %plot(x2, sin(f2*x2), 'rs--', 'LineWidth', 2, 'MarkerFaceColor', 'b')
end
