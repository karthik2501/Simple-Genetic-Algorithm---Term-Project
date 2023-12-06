%THIS FUNCTION RETURNS THE CHILDREN AFTER CROSSOVER

function C = crossover(P,N)
    pcross = 0.9;
    count = 0;
    F = fitness(P,N);
    C = P;
    prob_distribution = F./sum(F);
       while count < N
           x = rand;
           parents = randsample(P.',2,true,prob_distribution.').';
           if x < pcross
               count = count + 1;
               C(count) = x*parents(1) + (1-x)*parents(2);   
           end
       end
end           