%THIS FUNCTION RETURNS THE CHILDREN AFTER CROSSOVER

function C = crossover(P,N)
    pcross = 1;
    count = 0;
    F = fitness(P,N);
    C = P;
    prob_distribution = F./sum(F);
       while count < N
           x = rand;
           k = randsample(1:N,2,true,prob_distribution);
           if x < pcross
               count = count + 1;
               C(:,count) = x*P(:,k(1)) + (1-x)*P(:,k(2));   
           end
       end
end           