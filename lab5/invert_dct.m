function mtx = invert_dct(block)
  n = size(block)(1,1);
  coef = dct_mtx(n);
  mtx = coef'*block*coef;
endfunction
