%% Exercise: Advanced Plotting
function plotSin3(f1, f2)
if nargin == 1
    figure
    x = linspace(0, 2*pi, 16*f1) %16 points per period
    plot(x, sin(f1*x), 'rs--', 'LineWidth', 2, 'MarkerFaceColor', 'b')
else
    figure
    subplot(2, 1, 1)
    x1 = linspace(0, 2*pi, 16*f1)
    plot(x1, sin(f1*x1), 'rs--', 'LineWidth', 2, 'MarkerFaceColor', 'b')
    subplot(2, 1, 2)
    x2 = linspace(0, 2*pi, 16*f2)
    plot(x2, sin(f2*x2), 'rs--', 'LineWidth', 2, 'MarkerFaceColor', 'b')
end
