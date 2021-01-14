%% Functions: Exercise
function plotSin(f1)
figure
x = linspace(0, 2*pi, 16*f1) %16 points per period
plot(x, sin(f1*x))
end
