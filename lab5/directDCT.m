function dct = directDCT(block)
  %Vector A consists of elements that meet the following
   %requirements A(x) = (2x+1)*PI/(2*N), where N is size(A)
   % and x = 1:N
   N = size(block(:,1))(1,1);
   A = zeros(N)(1,:);
   for x = 1:N
     A(x) = (2*x - 1)*pi/(2*N); 
   endfor
   %Vector B consists of elements that meet the following
   %requirements B(y) = (2y+1)*PI/(2*N), where N is size(A)
   % and y = 1:N
   B = zeros(N)(1,:);
   for y = 1:N
     B(y) = (2*y - 1)*pi/(2*N); 
   endfor
   
    %Function C returns coefs required for calculation
    function val = c(i)
      if i == 1
        val = sqrt(1/N);
      else
        val = sqrt(2/N);
      endif  
    endfunction  
   
    for i=1:N
      for j=1:N
        dct(i, j) = c(i)*c(j)*sum(sum(block.*(cos(A.*(i-1))'*cos(B.*(j-1)))));
      endfor
    endfor  
    
endfunction


