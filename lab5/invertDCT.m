function mtx = invertDCT(dct)
   N = size(dct(:,1))(1,1);
   mtx = zeros(N);
    %Function C returns coefs required for calculation
    function val = c(i)
      if i == 1
        val = sqrt(1/N);
      else
        val = sqrt(2/N);
      endif  
    endfunction  
    
   
    for x=1:N
      for y=1:N
        sum = 0;
        for i=1:N
          for j=1:N
            sum += c(i)*c(j)*dct(i,j)*cos((2*x-1)*pi*(i-1)/(2*N))*cos((2*y-1)*pi*(j-1)/(2*N));
          endfor
        endfor
        mtx(x,y) = sum;
      endfor
    endfor  
endfunction
