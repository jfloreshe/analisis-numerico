function [x,k] = newtonraphson(x0, tolerancia1, tolerancia2)

    k = 0;
    while true
      if abs(f(x0)) < tolerancia1
        x = x0;
        return;
      endif

      x1 = x0 - f(x0)/df(x0);

      if abs(f(x1)) < tolerancia1 || abs(x1-x0) < tolerancia2
        x = x1;
        return;
      endif

      x0 = x1;
      k = k + 1;
    end
endfunction

function y = df(x)
  y = 1/(x*(2+log(x))^2) + 1;
endfunction

function y = f(x)
  y = x - 1/(2+log(x)) -1;
endfunction
