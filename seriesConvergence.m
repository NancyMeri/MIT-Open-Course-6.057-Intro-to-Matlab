%% Convergence of infinite series (optional)
p = 0.99;
k = 0:1000;
geomSeries = p.^k;
g = 1/(1-p);
figure
xLine = 0:max(k); %values for plotting line from 0 to max(k)
yLine = ones(1, length(xLine))*g; %plotting a vector of Gs
plot (xLine, yLine, 'r')
hold on
plot (k, cumsum(geomSeries), 'b')
xlim([0, 1000])
ylim([0, 110])
xlabel('Index')
ylabel('Sum')
title('Convergence of geometric series with p = 0.99')
legend('Infinite sum', 'Finite sum')
p = 2;
n = 1:500;
pSeries = 1./(n.^p);
c = max(cumsum(pSeries)); % = pi^2 / 6
figure
plot(0:max(n), ones(1, length(0:max(n)))*c, 'r')
hold on
plot(ones(1, length(pSeries)).*n, cumsum(pSeries), 'b')
xlabel('Index')
ylabel('Sum')
title('Convergence of geometric series with p = 2')
legend('Infinite sum', 'Finite sum')
