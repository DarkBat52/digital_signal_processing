function mtx = dct_mtx(n)
   function val = c(i)
      if i == 1
        val = sqrt(1/n);
      else
        val = sqrt(2/n);
      endif  
   endfunction 
  
  for k=1:n
    for l=1:n
      mtx(k,l) = c(k)*cos((k-1)*(l-0.5)*pi/n);
    endfor
  endfor
endfunction
