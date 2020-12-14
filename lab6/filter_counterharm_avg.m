function g = filter_counterharm_avg(window)
  m = size(window)(1,1);
  n = size(window)(1,2);
  Q = m*n;
  g = sum(sum(window.^(Q+1)))/(sum(sum(window.^Q)));
endfunction
