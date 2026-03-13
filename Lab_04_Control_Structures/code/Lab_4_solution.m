%%%%%%%%%% even only numbers from 2 to 20%%%%%%%%%%
num = 2;
while num <= 20
    disp(num);
    num = num + 2;
end
%%%%%%%%%Factorial Using a While Loop%%%%%%%%%%%
number = input('Enter a number to get its factorial: ');
fact = 1;
j = 1;

while j <= number
    fact = fact * j;
    j = j + 1;
end

disp(fact)
%%%%%%%%%%%%cost of trip%%%%%%%%%%%%%%%%
mode = input('Enter transportation choice: car or bike or plane :  ' ,'s');
switch mode 

    case 'car'
        cost = '5$';
    case 'bike'
        cost = '10$';
    case 'plane'
        cost = '23%';
    otherwise 
        disp('choice is not correct please choose from list');
end

disp(cost)
%%%%%%%%%%%%cost of trip%%%%%%%%%%%%%%%%
mode = input('Enter color of choice: white, yellow, black, green, blue :  ' ,'s');
switch mode 

    case 'white'
        code = '45642';
    case 'yellow'
        code = '456542';
    case 'black'
       code = '456642';
    case 'green'
        code = '456342';
    case 'blue'
        code = '4564122';
    otherwise 
        disp('choice is not correct please choose from list');
end

disp(code)

%%%%%%%%%%%%cost of trip per miles%%%%%%%%%%%%%%%%
mode = input('Enter transportation choice: car or bike or plane :  ' ,'s');
miles = input('enter miles: ');
switch mode 

    case 'car'
        cost1 = 5;
    case 'bike'
        cost1 = 4;
    case 'plane'
        cost1 = 3;
    otherwise 
        disp('choice is not correct please choose from list');
end
result = cost1 *miles;
fprintf('Cost is: %d\n', result)