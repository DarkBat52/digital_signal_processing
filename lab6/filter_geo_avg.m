function g = filter_geo_avg(window)
  m = size(window)(1,1);
  n = size(window)(1,2);
  g = prod(prod(window))^(1/(m*n));
endfunction
