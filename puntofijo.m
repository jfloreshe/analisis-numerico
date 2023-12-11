function [x,k] = puntofijo(x0, tolerancia1, tolerancia2)

    k = 0;
    x1 = theta(x0);
    while true
      if abs(f(x0)) < tolerancia1
        x = x0;
        return;
      endif

      x1 = theta(x0);

      if abs(f(x1)) < tolerancia1 || abs(x1-x0) < tolerancia2
        x = x1;
        return;
      endif

      x0 = x1;
      k = k + 1;
    end
endfunction

function y = theta(x)
  y = 1/(2+log(x)) + 1;
endfunction

function y = f(x)
  y = x - 1/(2+log(x)) -1;
endfunction
