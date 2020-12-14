  %This function creates a mask based on number of required coefs
  %for a 8x8 block
 
 function mtx = make_mask(n)
    min_bound = 1;
    max_bound = 8;
    max_n = max_bound^2;
    
    mtx = zeros(8);
    x = min_bound;
    y = min_bound;
    mtx(y,x)=1;
    if n > max_n
      n = max_n;
    endif  
    state = 1;
    for i = 2:n
      switch (state)
      case 1
        x++;
        mtx(y,x) = 1;
        if (i < max_n/2)
          state = 2;
        else 
          state = 4;
        endif
      case 2
        y++; x--;
        mtx(y,x) = 1;
        if (y == max_bound)
          state = 1;
        elseif x == min_bound
          state = 3;
        endif  
      case 3  
        y++;
        mtx(y,x) = 1;
        if (i < max_n/2)
          state = 4;
        else
          state = 2;
        endif  
      case 4
        y--; x++;
        mtx(y,x) = 1;
        if y == min_bound
          state = 1;
        elseif x == max_bound
          state = 3;
        endif 
      endswitch  
    endfor
  endfunction