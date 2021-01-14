%% Two Line Plot
figure
t = 0:0.1:2*pi;
plot(t, sin(t), 'g*:')
hold on
plot(t, cos(t), 'c*--')
xlabel('Time (s)')
ylabel('Function value')
title('Sin and Cos')
legend('sin', 'cos')
xlim([0, 2*pi])
ylim([-1.4, 1.4])
