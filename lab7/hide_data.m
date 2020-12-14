function g = hide_data(img, data)
  con = bitand(img, 254);
  data = data/256;
  con(1:200, 1:200) += data;
  g = con;
endfunction
