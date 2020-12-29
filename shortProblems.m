%% Scalar variables
a = 10
b = 2.5 * 10^23
c = 2 + 3i
d = exp(j * 2 * pi / 3)

%% Vector Variables
aVec = [3.14 15 9 26]
bVec = [2.71; 8; 28; 182]
cVec = 5:-0.2:-5
dVec = logspace(0, 1, 100)
eVec = ['H' 'e' 'l' 'l' 'o']

%% Matrix Variables
aMat = 2 * ones(9)
bMat = zeros(9) + diag([1 2 3 4 5 4 3 2 1])
cMat = reshape(1:1:100, 10, 10)
dMat = nan(3, 4)
eMat = [13 -1 5; -22 10 -87]
fMat = floor(7*rand(5, 3) - 3)
fMat = randi([-3, 3], 5, 3)

%% Scalar Equations
x = 1/(1 + exp(-(a-15)/6))
y = (sqrt(a) + nthroot(b, 21))^pi
z = (log(real([(c+d)*(c-d)]*sin(a*pi/3))))/(c*conj(c))

%% Matrix Equations
xMat = (aVec * bVec) * (aMat)^2
yMat = (bVec * aVec)
zMat = det(cMat) * (aMat*bMat).' %should it be all 0?

%% Common Functions and Indexing
cSum = sum(cMat)
eMean = (mean(eMat.')).'
eMat(1,:) = ones(1, 3)
cSub = cMat(2:9, 2:9)
lin = 1:1:20
idx = 2:2:20
lin(idx) = lin(idx) * -1
r = rand(1, 5)
r(find(r<0.5)) = 0

%% Plotting Multiple Lines and Colors


