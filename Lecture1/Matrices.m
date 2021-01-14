%% Arrays can be used for matrices and stuff
row1 = [ 1 2 3.2 4 6 5.4]
row2 = [ 1, 2, 3.2, 4, 6, 5.4]
%row vector values can be separated by either a space or a comma

col = [ 1; 2; 3.2; 4; 6; 5.4]
%column vector values must be separated by a semicolon

%difference between row and col:
size(row1)
size(col)

%% Matrices:
a = [1 2; 3 4]
b = [a a; a a]

transpose(a)
a.' %faster way to take the transpose
a' %Hermitian-transpose (complex numbers)
row = [1 2 3 4]
col = [1; 2; 3; 4]
c = row + col
d = row.' + col
e = row + col.'
f = sum(row) %adds all the elements
g = prod(row) %multiplies all the elements
h = sum(col) %works with columns too-- any vector
i = prod(col)
j = exp(row) %functions of scalars work on vectors
k = sqrt(row)

%element-wise functions: use the .' (transpose)
l = row.*col.'
m = row./b.'
n = row.*col

%testing dimension errors:
mat1 = [1, 2, 3; 4, 5, 6]
mat2 = [4, 5, 6, 7, 7, 9]
%mat1*mat2 --> error; testing is a success!

%% Automatic Initialization
o = ones (1, 10) %row vector of 10 ones
z = zeros (23, 1) %column vector of 23 zeros
r = rand(1, 45) %row vector with 45 elements 0-1
n = nan(1, 69) %row vector of 69 NaNs

%initializing a linear vector of values:
a = linspace(0, 10, 5) %5 values 0-10 evenly

%or use a colon:
b = 0:2:10
c = 1:5

%use logspace for logarithmically spaced vectors

%% Random Matrices
A = rand(5) %creates a random 5x5 matrix

%% Indexing
a = [13, 2, 4]
num1 = a(1) %indexing starts at 1
mat = [1, 2; 3, 4]
num2 = mat(1, 2)

%select a row of a matrix:
d = mat(1, :)

%select a column of a matrix:
e = mat(:, 2)

%editing rows and columns:
mat(2,:) = [3 6]

%% Finding mins/maxes and their locations
vec = [5 3 4 2 7]
[minVal, minInd] = min(vec)

%% Finding/changing indices of values or ranges
ind = find(vec == 7)
vec(ind) = 8
ind = find(vec > 2 & vec < 6)
