function g = filter_ar_avg(window)
  m = size(window)(1,1);
  n = size(window)(1,2);
  g = 1/(m*n)*sum(sum(window));
endfunction
