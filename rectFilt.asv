%% Smoothing Filter
function smoothed = rectFilt(x, width)
if rem(width, 2) == 0
    width = width + 1
    disp('Width was even, so one has been added')
end
incr = (width - 1)/2
smoothed = zeros(length(x), 0)
for n = 1:length(x)
    if n < incr + 1
        smoothed(n) = mean(x(1:n+incr))
    elseif n > length(x) - incr
        smoothed(n) = mean(x(n-incr:length(x)))
    else
        smoothed(n) = mean(x(n-incr:n+incr))
    end
end
end

% Cut and paste the following code into the command window (CUT not copy)
load noisyData.mat
figure
plot(x, 'b.', 'MarkerSize', 15)
hold on
plot(rectFilt(x, 11), 'r')
title('Smoothing Illustration')
xlabel('Index')
ylabel('Data Value')
legend('Original Data', 'Smoothed')
