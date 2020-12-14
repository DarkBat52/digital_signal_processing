function dct = directDCT_v2(block)
   N = size(block(:,1))(1,1);
    %Function C returns coefs required for calculation
    function val = c(i)
      if i == 1
        val = sqrt(1/N);
      else
        val = sqrt(2/N);
      endif  
    endfunction  
    
    global block_count = 0;
    block_count++;
    disp(block_count);
   
    for i=1:N
      for j=1:N
        sum = 0;
        for x=1:N
          for y=1:N
            sum= sum + block(x,y)*cos((2*x-1)*pi*(i-1)/(2*N))*cos((2*y-1)*pi*(j-1)/(2*N));
          endfor
        endfor
       dct(i, j) = c(i)*c(j)*sum;
       % dct(i, j) = sum;
      endfor
    endfor  
    
endfunction