function g = filter_alpha_avg(window)
  alpha = 1;
  m = size(window)(1,1);
  n = size(window)(1,2);
  g = 1/(m*n-alpha)*sum(window(:));
endfunction
