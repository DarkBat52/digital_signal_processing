function plot_all(n)

  coefs = zeros(n)(1, :);
  coefs(1) = 1;
  for i=1:n
    coefs(i) = round(i*64/n);
  endfor  
  
  quality = zeros(n)(1, :);
  cmp_ratio = zeros(n)(1, :);
  cor = zeros(n)(1, :);
  path = "batman_jl.png"
  for i = 1:n
     disp(ctime(time));
     disp(i);
    [cmp, quality(i), cmp_ratio(i), cor(i)] = compress(path, make_mask(coefs(i)));
  endfor  
  
  figure, plot(coefs, quality, 'marker', 'x');
  xlabel("Number of coefficients");
  ylabel("Quality");
  
  figure, plot(cmp_ratio, quality, 'marker', 'x');
  xlabel("Compression ratio");
  ylabel("Quality");
  
endfunction
