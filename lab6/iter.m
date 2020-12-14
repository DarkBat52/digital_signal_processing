function g = iter(mtx, fun)
  g = mtx;
  rows = size(mtx)(1, 1);
  columns = size(mtx)(1, 2);
  window = zeros(3,3);
  for i=2:rows-1
    for j = 2:columns-1
      for m=1:3
        for n = 1:3
          window(m,n) = mtx(i-2+m, j-2+n);
        endfor  
      endfor  
      g(i,j) = fun(window);
    endfor
  endfor
endfunction
