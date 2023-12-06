%THIS FUNCTION RETURNS THE CHILDREN AFTER MUTATION

function M = mutation(P,N,X)
     p_mutation = 0;
     M = P;
     for i = (1:N)
         x = rand;
         if x < p_mutation && bound_check((2*x)*P(:,i),X) && f((2*x)*P(:,i)) > 0
             M(:,i) = (2*x)*P(:,i);
         end
     end
end