%% Loops and Flow Control
function loopTest(N)
for num = 1:N
    if rem(num, 2) == 0
        if rem(num, 3) == 0
            disp([num2str(num) ' is divisible by 2 AND 3'])
        else
            disp([num2str(num) ' is divisible by 2'])
        end
    elseif rem(num, 3) == 0
        disp([num2str(num) ' is divisible by 3'])
    else
        disp([num2str(num) ' is NOT divisible by 2 or 3'])
    end
end
end

