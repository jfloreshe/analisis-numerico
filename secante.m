function [x,k] = secante(x0, x1, tolerancia1, tolerancia2)

    k = 0;
    xk_anterior = x0;
    xk = x1;
    while true

      xk_siguiente = xk - (f(xk)*(xk-xk_anterior))/(f(xk)-f(xk_anterior));

      if abs(f(xk_siguiente)) < tolerancia1 || abs(xk_siguiente - xk) < tolerancia2
        x = xk_siguiente;
        return;
      endif
      xk_anterior = xk;
      xk = xk_siguiente;
      k = k+1;
    end
endfunction

function y = f(x)
  y = x - 1/(2+log(x)) -1;
endfunction
