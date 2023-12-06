%THIS FUNCTION RETURNS FITNESS VALUES OF THE POPULATION

function y = fitness(x,N)
    y = zeros(1,N);
    for i = (1:N)
        y(i) = f(x(:,i));
    end
end