function g = filter_mid_point(window)
  g = 0.5*(max(window(:)) + min(window(:)));
endfunction
