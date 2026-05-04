%%%%%%%%%%%%%% Task 1 %%%%%%%%%%%%%%%

classList = createClassList('Alice','Bob','Charlie')


%%%%%%%%%%%%%% Task 2 %%%%%%%%%%%%%%%

fibonacci_rec(7)


%%%%%%%%%%%%%% Task 3 %%%%%%%%%%%%%%%

names = {'John', 'Sara', 'Mike'};
depts = {'HR', 'IT', 'IT'};

empTable = table(names', depts');

empTable.depts = categorical(empTable.depts);

itTable = empTable(empTable.depts == 'IT', :)


%%%%%%%%%%%%%% Task 4 %%%%%%%%%%%%%%%

fruits = ["Cherry", "Apple", "Banana"];

sorted_fruits = sort(fruits);

joined_str = join(sorted_fruits, "-")


%%%%%%%%%%%%%% Task 5 %%%%%%%%%%%%%%%

A = [1 2; 3 4];
B = [1 2 3];

try
    A * B;
catch
    disp('Matrix mismatch detected. Applying fallback.')
    result = A(1,:) .* B(1:2);
    disp(result)
end


%%%%%%%%%%%%%% Task 6 %%%%%%%%%%%%%%%

[X, Y] = meshgrid(-3:0.1:3, -3:0.1:3);

Z = cos(X) + sin(Y);

surf(X, Y, Z);
colormap turbo
colorbar


%%%%%%%%%%%%%% Task 7 %%%%%%%%%%%%%%%

cars(1).Model = 'Sedan'; cars(1).Price = 25000;
cars(2).Model = 'SUV';   cars(2).Price = 40000;
cars(3).Model = 'Truck'; cars(3).Price = 30000;

n = length(cars);

for i = 1:n-1
    max_idx = i;
    for j = i+1:n
        if cars(j).Price > cars(max_idx).Price
            max_idx = j;
        end
    end
    temp = cars(i);
    cars(i) = cars(max_idx);
    cars(max_idx) = temp;
end

cars


function classList = createClassList(varargin)
    n = nargin;
    for i = 1:n
        classList(i).Name = varargin{i};
        classList(i).Grade = [];
    end
end


function f = fibonacci_rec(n)
    if n == 0
        f = 0;
    elseif n == 1
        f = 1;
    else
        f = fibonacci_rec(n-1) + fibonacci_rec(n-2);
    end
end