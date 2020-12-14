function edge_r = Roberts(img, thresh)
  rob_x = [0, 0, 0;
           0, -1, 0;
           0, 0, 1];
  rob_y = [0, 0, 0;
           0, 0, -1;
           0, 1, 0];
          edge_r = grad_edge(img, thresh, rob_x, rob_y); 
endfunction
