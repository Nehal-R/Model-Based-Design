%%%%%%%%%%%%%% Task 1: Basic Data Types %%%%%%%%%%%%%%%

num = 15.7;

num_int = int32(round(num));

is_positive = num_int > 0;

text_output = [num2str(num_int) ' Units'];


%%%%%%%%%%%%%% Task 2: Matrix Creation %%%%%%%%%%%%%%%

M = [1:3; zeros(1,3); randi([5 10],1,3)];


%%%%%%%%%%%%%% Task 3: Matrix Indexing %%%%%%%%%%%%%%%

A = [10 20 30; 40 50 60; 70 80 90];

sub_A = A(:, [2 end]);


%%%%%%%%%%%%%% Task 4: Mathematical Operation %%%%%%%%%%%%%%%

X = [2 4; 6 8];

result = (X.^2) ./ 2;


%%%%%%%%%%%%%% Task 5: Concatenation %%%%%%%%%%%%%%%

A = [1 2; 3 4];
B = [5; 6];

C = [A B];

D = [7 8 9];

Final_Mat = [C; D];


%%%%%%%%%%%%%% Task 6: Repeating %%%%%%%%%%%%%%%

v = [1 2];

R1 = repmat(v, 3, 2);

R2 = repelem(v, 3);


%%%%%%%%%%%%%% Task 7: Matrix Operations %%%%%%%%%%%%%%%

A = [1 2; 2 2];
b = [2; 6];

A_inv = inv(A);

x = A_inv * b;

trace_A = trace(A);