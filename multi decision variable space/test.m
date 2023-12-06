% IMPLEMENTATION OF REAL ENCODING SIMPLE GENETIC ALGORITHM
% n = NUMBER OF DIMENSIONS IN DESICION VARIABLE SPACE
% B CONTAINS THE BOUNDS OF THE DECISION VARIABLE SPACE

n = 3;
B =[-4 4;-4 4];
N = 10;
%INITIALIZATION OF THE RANDOM POPULATION
Population = zeros(2,N);
count = 1;
while count <= N
    x = rand(2,1).*(B(:,2) - B(:,1))+B(:,1);
    if (f(x)>0)
        Population(:,count) = x;
        count = count +1;
    end
end
%SIMPLE SGA RUNS FOR N GENERATIONS
for i = (1:8000)
    Parents = selection(Population,N);
    Children = crossover(Parents,N);
    Children_M = mutation(Children,N,B);
    Population = Children_M;
end
%GRAPHICAL VISUALIZATION OF OPTIMUM SOLUTION
[X,Y] = meshgrid(-4:0.005:4,-4:0.005:4);
Z = real(((X).^2 +(Y).^2));
s = surf(X,Y,Z,'FaceAlpha',1);
s.EdgeColor ='none';
for i = (1:N)
    hold on
    plot3(Population(1,i),Population(2,i),f(Population(:,i)),'p-k');
end