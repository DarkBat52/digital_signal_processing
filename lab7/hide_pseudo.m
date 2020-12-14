function g = hide_pseudo(img, data)
  con = img;
  %prepare the container
  %Compute the amount of data in bits which can be stored
  %If data is too big for container return a corresponding message
  m = size(con)(1,1);
  n = size(con)(1,2);
  count = 0;
  for i=1:m
    for j=1:n
      byte = bitand(con(i, j), 0b11110000);
      if (byte == 0 || byte == 0b11110000)
        con(i, j) = bitand(con(i, j), 0b11110000);
        count++;
      endif  
    endfor  
  endfor 
  count *= 4; 
  data_size = size(data)(1,1) * size(data)(1,2);
  if data_size > count
    disp("Data too big for file");
    disp(["Max data_size is " num2str(count)]);
    disp(["Current data_size is " num2str(data_size)]);
    return  
  endif 
  
  %convert data into an array of 0b0000xxxx-like nums
  data = data/256;
  adapted_data = zeros(data_size/4)(1, :);
  m = size(data)(1,1);
  n = size(data)(1,2);
  order = 0;
  order = uint16(order);
  
  for i=1:m
    for j=1:n
      adapted_data(idivide(order, 4, "floor") + 1) += data(i, j) * uint8(2^(mod(order, 4)));
      order++; 
    endfor  
  endfor 
  
  %add adapted data to the container
  
  m = size(con)(1,1);
  n = size(con)(1,2);
  a = size(adapted_data)(1,2);
  count = 1;
  for i=1:m
    for j=1:n
      byte = bitand(con(i, j), 0b11110000);
      if (byte == 0 || byte == 0b11110000)
        con(i,j) += adapted_data(count);
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
  
  g = con;
endfunction
