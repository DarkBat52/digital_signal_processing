function g = reveal_pseudo(img, data_size_x)
  
  %get adapted data hidden in image
  
  con = img;
  a = data_size_x^2/4;
  adapted_data = zeros(a)(1,:);
  
  m = size(con)(1,1);
  n = size(con)(1,2);
  count = 1;
  for i=1:m
    for j=1:n
      byte = bitand(con(i, j), 0b11110000);
      if (byte == 0 || byte == 0b11110000)
        adapted_data(count) = bitand(con(i,j), 0b00001111);
        count++;
      endif 
      if count > a
        break;
      endif   
    endfor  
    if count > a
      break;
    endif  
  endfor 
  
  %transform adapted_data into a pic
  
  data = zeros(data_size_x);
  m = data_size_x;
  n = data_size_x;
  order = 0;
  order = uint16(order);
  
  for i=1:m
    for j=1:n
      adapted_data(idivide(order, 4, "floor") + 1) += data(i, j) * uint8(2^(mod(order, 4)));
      data(i,j) = bitand(adapted_data(idivide(order, 4, "floor") + 1),uint8(2^(mod(order, 4))));
      if data(i, j) > 0
        data(i, j) /= data(i, j);
      endif  
      order++; 
    endfor  
  endfor 
  
  g = data*256;
  
endfunction
