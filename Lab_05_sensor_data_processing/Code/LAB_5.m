%%%%%%%%%%%%%% Task 1: I/O, Data Types & Matrix Creation %%%%%%%%%%%%%%%

dept = input('Enter your department name: ', 's');

N = input('Enter a matrix dimension N: ');

M = randn(N);

is_empty = isempty(M);

fprintf('Department %s created a %dx%d matrix. Is it empty? %d\n', dept, N, N, is_empty);


%%%%%%%%%%%%%% Task 2: Matrix, Indexing & Array Ops %%%%%%%%%%%%%%%

M = reshape(1:16, 4, 4);

SubM = M(end-1:end, end-1:end);

Id = eye(2);

Math_Mat = (SubM.^2) + Id;


%%%%%%%%%%%%%% Task 3: Repeating & Concatenation %%%%%%%%%%%%%%%

v = 10:-3:1;

Rep_A = repmat(v, 3, 2);

col = zeros(3,1);

Final_Block = [Rep_A col];


%%%%%%%%%%%%%% Task 4: Function, If & Matrix Ops %%%%%%%%%%%%%%%

% ---- Function (save in same file or separate file) ----
function x = solveLinear(A, b)
    if det(A) ~= 0
        x = inv(A) * b;
    else
        x = [];
    end
end

% ---- Test ----
A = [1 3 0; 2 1 3; 4 2 3];
b = [1; 6; 3];

x = solveLinear(A, b)


%%%%%%%%%%%%%% Task 5: While, For, Anonymous Function %%%%%%%%%%%%%%%

N = input('Enter a strictly positive integer: ');

while N <= 0
    N = input('Enter a strictly positive integer: ');
end

f = @(x) x.^2 + 10;

sum_val = 0;

for i = 1:N
    sum_val = sum_val + f(i);
end

fprintf('The final accumulated sum is %d\n', sum_val);