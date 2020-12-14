function z = rayleigh_dist(rows, columns)
  z = sqrt(-log(1 - rand(rows, columns)));
endfunction
