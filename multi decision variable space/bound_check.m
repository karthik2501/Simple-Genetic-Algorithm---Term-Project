function y = bound_check(a,b)
      y = a(1) >= b(1,1) && a(1) <= b(1,2) && a(2) >= b(2,1) && a(2) <= b(2,2);
end