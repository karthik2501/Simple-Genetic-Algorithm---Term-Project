% THIS FUNCTION RETURNS THE PARENTS FROM THE GIVEN POPULATION  
% USING STOCHASTIC REMAINDER SELECTION

function S = selection(P,N)
   F = fitness(P,N);
   S = floor((F./sum(F)).*N);
   parents = P;
   count = 1;
   for i =(1:N)
       if S(i) > 0
           for j = (count:count+S(i)-1)
               parents(j)= P(i);
           end
           count = count + S(i);
       end
   end
   if sum(S) < N
       prob_distribution = (F./sum(F)).*N - floor((F./sum(F)).*N);
       k = randsample(P.',N-count+1,true,prob_distribution.').';
       for i = (count:N)
           parents(i) = k(i-(count-1));
       end
   end
   S = parents;
end