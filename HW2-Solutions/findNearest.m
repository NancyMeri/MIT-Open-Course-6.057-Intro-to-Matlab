%% Fun with find
function ind = findNearest(x, desiredVal)
y = x(:); %makes a vector with values of the matrix
[valY, indY] = min(abs(desiredVal-y))
ind = find(x==y(indY))
end
