%%%%%%%%%%%%%% Task 1: Basic Data Types %%%%%%%%%%%%%%%
my_num = 50;
my_str = 'Hello World';
size_str = size(my_str);

%%%%%%%%%%%%%% Task 2: Matrix Creation %%%%%%%%%%%%%%%
M = [1 2 3; 4 5 6];
V = 20:-2:10;

%%%%%%%%%%%%%% Task 3: Matrix Indexing %%%%%%%%%%%%%%%
element_23 = M(2,3);
first_column = M(:,1);
last_element = M(end,end);

%%%%%%%%%%%%%% Task 4: Mathematical Operations %%%%%%%%%%%%%%%
A = [1 2; 3 4];
B = [2 4; 6 8];
element_wise_multiplication = A .* B;
element_wise_division = A ./ B;
transpose_A = A.';

%%%%%%%%%%%%%% Task 5: Concatenation %%%%%%%%%%%%%%%
A = [1 2; 3 4];
B = [5 6; 7 8];
C_horz = horzcat(A, B);
C_vert = vertcat(A, B);

%%%%%%%%%%%%%% Task 6: Repeating (repmat) %%%%%%%%%%%%%%%
A = [1 2; 3 4];
R = repmat(A, 3, 2);