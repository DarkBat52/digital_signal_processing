function retval = reveal_data(img)
  buf = bitand(img, 1);
  buf = buf*256;
  retval = buf;
endfunction
