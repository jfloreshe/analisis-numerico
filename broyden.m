function [x1,k] = broyden (x0, x1, t1, t2)
  k = 0;
  n = length(x1);
  iB = eye(n);
  while norm(F(x1)) >= t1 && norm(x1-x0) >= t2
    y = F(x1)-F(x0);
    d = x1-x0;
    iB = iB + (((d-iB*y)*d')*iB/(d'*iB*y));
    x0 = x1;
    x1 = x1 - iB*F(x1);
    k = k + 1;
  endwhile
endfunction

function y = F(x)
  y = [3*x(1)^2-9*x(1)-2*x(2)-5; x(1)^2+x(2)^2-4*x(1)-8*x(2)-10];
endfunction
