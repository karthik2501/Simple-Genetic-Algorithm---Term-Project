% IMPLEMENTATION OF REAL ENCODING SIMPLE GENETIC ALGORITHM
% XL = lower limit of the decision variable
% XU = Upper limit of the decision variable 
% X = [XL XU]

X =[0.5 3];
N = 100;
Population = zeros(N,1);
count = 1;
while count <= N
    x = rand(1,1)*(X(2) - X(1))+X(1);
    if f(x) > 0
        Population(count) = x;
        count = count +1;
    end
end
for i = (1:1000)
    Parents = selection(Population,N);
    Children = crossover(Parents,N);
    Children_M = mutation(Children,N,X);
    Population = Children_M; 
end
fplot(@(x) 3*x*x-x*x*x,[X(1) X(2)]);
hold on
xlabel('x')
ylabel('f(x)')
title('Plot of f(x) and the optimized solution')
for j = (1:N)
    plot(Population(j),f(Population(j)),'-o');
end