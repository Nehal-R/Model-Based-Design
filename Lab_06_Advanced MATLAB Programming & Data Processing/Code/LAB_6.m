%%%%%%%%%%%%%% Task 1 %%%%%%%%%%%%%%%

N = input('Enter a positive integer greater than 2: ');
while N <= 2
    N = input('Invalid! Try again: ');
end

M = randn(N);
SubM = M(end-1:end, end-1:end);
disp(SubM);


%%%%%%%%%%%%%% Task 2 %%%%%%%%%%%%%%%

x = solveSystem([1 2; 2 4], [5; 10])


%%%%%%%%%%%%%% Task 3 %%%%%%%%%%%%%%%

v = [1 2];

Rep_Mat = repmat(v, 2, 3);

c = [10; 20];

Final_Mat = [c Rep_Mat];

Final_Mat = Final_Mat.^2


%%%%%%%%%%%%%% Task 4 %%%%%%%%%%%%%%%

word = 'MATLAB';

ascii_vals = int32(word);

Z = diag(ascii_vals)


%%%%%%%%%%%%%% Task 5 %%%%%%%%%%%%%%%

f = @(x) x.^2 + 2.*x;

sum_val = 0;

for i = 1:5
    sum_val = sum_val + f(i);
end

fprintf('The final sum is %d\n', sum_val);


%%%%%%%%%%%%%% Task 6 %%%%%%%%%%%%%%%

op = input('Enter operation (add, sub): ', 's');

A = [1 2; 3 4];
B = [5 6; 7 8];

switch op
    case 'add'
        result = [A; B];
    case 'sub'
        result = [A B];
    otherwise
        error('Invalid operation')
end

disp(result);


%%%%%%%%%%%%%% Task 7 %%%%%%%%%%%%%%%

M = [12 -5 8; -3 9 -1];

M(M < 0) = abs(M(M < 0)) * 10;

disp(M);


%%%%%%%%%%%%%% Task 8 %%%%%%%%%%%%%%%

I = eye(2);

Big_I = repelem(I, 2, 1);   % FIXED

t = trace(Big_I);

disp("Trace is: " + string(t));


%%%%%%%%%%%%%% Task 9 %%%%%%%%%%%%%%%

Data = [10 20; 30 40];

save('sensor_data.mat', 'Data');

clearvars

load('sensor_data.mat');

Result = (Data.') ./ 10;

disp(Result);


%%%%%%%%%%%%%% Task 10 %%%%%%%%%%%%%%%

A = randn(2,3,4);

Page2 = A(:,:,2);

Page2_T = Page2.';

num = numel(Page2_T);

fprintf('The extracted matrix contains %d elements.\n', num);


%%%%%%%%%%%%%% Function (must be at end) %%%%%%%%%%%%%%%

function x = solveSystem(A, b)
    if det(A) == 0
        disp('No unique solution')
        x = [];
    else
        x = inv(A) * b;
    end
end