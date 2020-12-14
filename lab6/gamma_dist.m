function z = gamma_dist(rows, columns)
  order = 5; % b
  a = 2;
  z = -1/a*log(1 - rand(rows, columns));
  for i = 2:order
    z += -1/a*log(1 - rand(rows, columns));
  endfor
endfunction
