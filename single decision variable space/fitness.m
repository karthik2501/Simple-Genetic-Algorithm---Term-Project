function y = fitness(x,N)
    y = zeros(N,1);
    for i = (1:N)
        y(i) = f(x(i));
    end
end