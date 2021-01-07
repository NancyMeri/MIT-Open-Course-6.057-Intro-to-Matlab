%% Semilog plot
figure
classSize = [15, 25, 55, 115, 144, 242]
semilogy(classSize, 's', 'LineWidth', 4, 'MarkerSize', 10, 'MarkerEdgeColor', 'm')
xlabel('year')
ylabel('class size')
title('Does class size grow exponentially by year?')
xlim([0, 7])

