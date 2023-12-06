%THIS FUNCTION RETURNS THE CHILDREN AFTER MUTATION

function M = mutation(P,N,X)
     p_mutation = 0.6;
     M = P;
     for i = (1:N)
         x = rand;
         if x < p_mutation && (2*x)*P(i)>X(1) && (2*x)*P(i)<X(2) && f((2*x)*P(i)) > 0
             M(i) = (2*x)*P(i);
         end
     end
end