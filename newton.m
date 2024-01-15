function [x,k] = newton (x,t1,t2)
  y = x+100; k = 0;
  while norm(F(x))>=t1 && norm(y-x)>=t2
    y = x;
    x = x - inv(Jac(x))*F(x);
    k = k + 1;
    if k > 10000
      error('No converge');
    endif
  endwhile
endfunction

function y = F(x)
  y = [3*x(1)^2-9*x(1)-2*x(2)-5; x(1)^2+x(2)^2-4*x(1)-8*x(2)-10];
endfunction

function y = Jac(x)
  y = [6*x(1)-9 -2; 2*x(1)-4  2*x(2)-8];
endfunction
