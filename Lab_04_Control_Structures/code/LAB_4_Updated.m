%%%%%%%%%%%%%% Task 1: Data Types, I/O, If %%%%%%%%%%%%%%%

val = input('Enter an integer number: ');

int_val = int32(val);

if int_val > 50
    status = "High";
elseif int_val == 50
    status = "Perfect";
else
    status = "Low";
end

disp(status);


%%%%%%%%%%%%%% Task 2: Matrix, Indexing, Concatenation %%%%%%%%%%%%%%%

M = [10 20 30; 40 50 60; 70 80 90];

Sub_M = M(:, [1 end]);

V = ones(3,1);

Final_Mat = [Sub_M V];


%%%%%%%%%%%%%% Task 3: Repeating & Array Operations %%%%%%%%%%%%%%%

vec = [2 4];

Rep_Mat = repmat(vec, 2, 1);

Math_Res = (Rep_Mat.^2) .* 0.5;


%%%%%%%%%%%%%% Task 4: Matrix Ops & fprintf %%%%%%%%%%%%%%%

A = [1 2; 3 4];
B = [5; 11];

det_A = det(A);

X = inv(A) * B;

fprintf('The determinant of matrix A is %.2f\n', det_A);


%%%%%%%%%%%%%% Task 5: I/O & Switch %%%%%%%%%%%%%%%

user_color = input('Enter a color code (r, g, b): ', 's');

switch user_color
    case 'r'
        color_name = "Red";
    case 'g'
        color_name = "Green";
    case 'b'
        color_name = "Blue";
    otherwise
        color_name = "Unknown Color";
end

fprintf('The selected color is %s\n', color_name);