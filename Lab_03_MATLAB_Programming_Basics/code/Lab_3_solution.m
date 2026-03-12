%%%%%%%%%%%%Cell Arrays%%%%%%%%%
Name = "Nehal";
age = 26;
mycell1 = {Name,age,23};
disp(mycell1);
disp(mycell1{2});
%%%%%%%%%%%%Structures%%%%%%%%%
person.name = 'salwa';
person.age = 23;
person.city = 'Cairo';
disp(person);
disp(person.age);
%%%%%%%%%%%%Character Data%%%%%%%%%
name1 = 'nehal';
name2 = 'rezk';
name3 = [name1 name2];
disp(name3);
%%%%%%%%%%%%Conditional Statements (If)%%%%%%%%%
num = 10;
if mod(num,2)
    disp('The number is odd')
else
    disp('The number is even')
end  
%%%%%%%%%%%%For Loops%%%%%%%%%
for i = 1:10
    disp(i)
end

%%%%%%%%%%%%Plot%%%%%%%%%
x = 0:0.1:2*pi;
y = sin(x);
plot(x,y);
xlabel('x Values');
ylabel('y Values');
title('Sine Wave');
legend('sin(x)');

