function g = filter_harm_avg(window)
  m = size(window)(1,1);
  n = size(window)(1,2);
  g = (m*n)/sum(sum(1./window));
endfunction
