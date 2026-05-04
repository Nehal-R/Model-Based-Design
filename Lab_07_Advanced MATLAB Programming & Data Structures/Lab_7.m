%%%%%%%%%%%%%% Task 1 %%%%%%%%%%%%%%%

val = input('Enter a decimal number: ');
int_val = uint8(round(val));

fprintf('The converted 8-bit integer is: %d\n', int_val);


%%%%%%%%%%%%%% Task 2 %%%%%%%%%%%%%%%

MyCell = {'MATLAB', 2026, ones(2,2)};

disp(MyCell{1});


%%%%%%%%%%%%%% Task 3 %%%%%%%%%%%%%%%

student.name = "Ali";
student.age = 21;
student.gpa = 3.6;

if student.gpa >= 3.5
    fprintf('Excellent student: %s\n', student.name);
else
    fprintf('Good student: %s\n', student.name);
end


%%%%%%%%%%%%%% Task 4 %%%%%%%%%%%%%%%

for i = 1:5
    fprintf('%d ', i*10);
end
fprintf('\n');


%%%%%%%%%%%%%% Task 5 %%%%%%%%%%%%%%%

x = input('Enter a positive number: ');
while x <= 0
    x = input('Invalid! Enter a positive number: ');
end

disp(x);


%%%%%%%%%%%%%% Task 6 %%%%%%%%%%%%%%%

color = input('Enter a color code (r, g, b): ', 's');

switch color
    case 'r'
        out = "Red";
    case 'g'
        out = "Green";
    case 'b'
        out = "Blue";
    otherwise
        out = "Unknown";
end

disp(out);


%%%%%%%%%%%%%% Task 7 %%%%%%%%%%%%%%%

x = 0:0.1:2*pi;
y = sin(x);

plot(x, y, 'r--', 'LineWidth', 3);
title('Sine Wave');
xlabel('x');
ylabel('sin(x)');


%%%%%%%%%%%%%% Task 8 %%%%%%%%%%%%%%%

v = [20 35 45];

subplot(1,2,1);
bar(v);
title('Bar Chart');

subplot(1,2,2);
pie(v);
title('Pie Chart');


%%%%%%%%%%%%%% Task 9 %%%%%%%%%%%%%%%

x = 1:5;

plot(x, x.^2, 'b');
hold on
plot(x, x.^3, 'g');
legend('x squared', 'x cubed');


%%%%%%%%%%%%%% Task 10 %%%%%%%%%%%%%%%

analyzeData([8 4 6 9 2])

function analyzeData(v)
    if length(v) > 3
        stem(v);
        title(sprintf('Data Length: %d', length(v)));
    else
        error('Data too short!');
    end
end