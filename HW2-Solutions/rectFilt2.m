%% Smoothing Filter (optional)
function smoothed = rectFilt2(x, width)
s = size(x)
if s(1) == 1 %original rectFilt with vector
    if rem(width, 2) == 0
        width = width + 1
        disp('Width was even, so one has been added')
    end
    incr = (width - 1)/2
    smoothed = zeros(length(x), 1)
    for n = 1:length(x)
        if n < incr + 1
            smoothed(n) = mean(x(1:n+incr))
        elseif n > length(x) - incr
            smoothed(n) = mean(x(n-incr:length(x)))
        else
            smoothed(n) = mean(x(n-incr:n+incr))
        end
    end
elseif s(2) == 2
    xValues = x(:,1)
    yValues = x(:,2)
    minX = min(xValues)
    maxX = max(xValues)
    incr = (width - 1)/2
    smoothed = zeros(length(xValues), 2)
    if width >= maxX-minX
        disp('Width is too big')
    else
        for n = 1:length(xValues)
            smoothed(n, 1) = xValues(n)
            if n < incr + 1
                smoothed(n, 2) = mean(xValues(1:n+incr))
            elseif n > length(xValues) - incr
                smoothed(n, 2) = mean(xValues(n-incr:length(xValues)))
            else
                smoothed(n, 2) = mean(xValues(n-incr:n+incr))
            end
        end
    end
else
    disp('Invalid input')
end
end

% Cut and paste the following code into the command window (CUT not copy)
load optionalData.mat
figure
plot(x(:,1), x(:,2), ' .', 'MarkerSize', 15)
hold on
smoothed = rectFilt2(x, 2)
plot(smoothed(:,2), x(:,2), 'r')
title('Smoothing Illustration, nonuniform spacing')
xlabel('Index')
ylabel('Data Value')
legend('Original Data', 'Smoothed')