function dct = direct_dct(block)
  n = size(block)(1,1);
  coef = dct_mtx(n);
  dct = coef*block*coef';
endfunction
