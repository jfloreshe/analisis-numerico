function [x,k] = biseccion(a, b, tol)
  k = 0;

  while (b - a) > tol
    k = k + 1;
    c = (a + b) / 2;

    if f(c) * f(b) > 0
      b = c;
    else
      a = c;
    end
  end

  x = (a + b) / 2;
endfunction

function y = f(x)
  y = x*(3*x*log(x)-8*x+2);
endfunction
