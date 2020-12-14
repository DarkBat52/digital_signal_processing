function edge_p = Previtt(img, thresh);
   mask_x = [-1, -1, -1;
             0, 0, 0;
             1, 1, 1];
   mask_y = [-1, 0, 1;
             -1, 0, 1;
             -1, 0, 1];
            edge_p = grad_edge(img, thresh, mask_x, mask_y);
endfunction