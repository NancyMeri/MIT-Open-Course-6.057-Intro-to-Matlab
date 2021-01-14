%% Functions
a = zeros(2, 4, 8)
D = size(a)
[m, n] = size(a)
[x, y, z] = size(a)
m2 = size(a, 2)

%% Line Plots
% Line and Marker Options-- play with it!
figure
x = 1:1:1000
y = x
plot(x, y, 's-', 'Color', [1 1 0])

% Cartesian Plots
figure
x = -pi:pi/100:pi;
y = cos(4*x).*sin(10*x).*exp(-abs(x));
plot(x, y, 'k-')

figure 
semilogx(x,y,'k')
figure
semilogy(y, 'r.-')
figure
loglog(x,y)

figure
x = 0:100;
semilogy(x, exp(x), 'k.-')

% remember to use 'close all' in command window to close all figures

% 3D Line Plots
time = 0:0.001:4*pi;
x = sin(time);
y = cos(time);
z = time;
figure
plot3(x, y, z, 'k', 'LineWidth', 2);
zlabel('Time');
axis equal %one of many ways to edit axes
axis tight
axis square

% Multiple Plots in one Figure
figure
subplot(2, 3, 1)
subplot (2, 3, 4:6)

%% Image / Surface Plots
% Visualising Matrices
figure
mat = reshape(1:10000,100,100);
imagesc(mat);
colorbar
caxis([3000 7000]) %like xlim and ylim
colormap(cool) %some predefined maps
map = zeros(256, 3); %or use custom map
map(:,2) = (0:255)/255
colormap(map)

% Visualising Surfaces
x = -pi:0.1:pi;
y = -pi:0.1:pi;
[X, Y] = meshgrid(x, y);
Z = sin(X).*cos(Y);
surf(X, Y, Z)
figure
surf(x, y, Z) %same as previous one
figure
colormap(jet) %jet is another predefined map
surf(membrane)
shading interp %shading options: faceted, flat, interp
%surfaces can be made two-dimensional using contour
figure
contour(X,Y,Z,'LineWidth',2)
hold on
mesh(X,Y,Z) %click 4th button to the left to rotate in 3D

% Specialized Plotting Functions
figure
polar(0:0.01:2*pi,cos((0:0.01:2*pi)*2)) %polar plots
figure
bar(1:10,rand(1,10)) %bar graphs
figure
[X, Y] = meshgrid(1:10,1:10)
quiver(X,Y,rand(10),rand(10)); %plot with velocity vectors
figure
stairs(1:10,rand(1,10)); %piecewise constant functions
figure
fill([0 1 0.5], [0 0 1], 'r'); %a filled polygon with specified verticies

%% Efficient Codes
% Find
x = rand(1,100);
inds = find(x>0.4 & x<0.6); %syntax
% Find can often help avoid an annoying loop

%% Debugging
% Tic Tock
tic %resets the timer
% some chunk of code
a = toc %shows time it took to run since tic

% Sparse Matrices
A = zeros(10000); A(1,3)=10; A(21,5)=pi;
B = sparse(A);
tic
inv(A);
x = toc
tic
inv(B);
y = toc %almost 3X faster

