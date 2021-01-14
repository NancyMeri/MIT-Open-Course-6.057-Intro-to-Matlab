%% Plotting 

x = linspace(0, 4*pi, 10)
y = sin(x)

%Plotting against an index:
plot(y)
plot(x, y) %plotting y versus x

%Plot generates dots at each (x, y) pair,
% and then connects them with a line

%for a smoother function, use more points:
x = linspace(0, 4*pi, 1000)
plot(x, sin(x))
