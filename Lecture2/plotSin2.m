%% Exercise: Conditionals
function plotSin2(f1, f2)
if nargin == 1
    figure
    x = linspace(0, 2*pi, 16*f1) %16 points per period
    plot(x, sin(f1*x))
else
    disp('Two inputs were given')
end
