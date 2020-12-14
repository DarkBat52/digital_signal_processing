function edge_s = Sobel(img, thresh);
   mask_x = [-1, -2, -1;
             0, 0, 0;
             1, 2, 1];
   mask_y = [-1, 0, 1;
             -2, 0, 2;
             -1, 0, 1];
            edge_s = grad_edge(img, thresh, mask_x, mask_y);
endfunction
