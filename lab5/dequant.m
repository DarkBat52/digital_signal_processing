function mtx = dequant(quanted_mtx)
  quant_mtx = [3 5 7 9 11 13 15 17;
              5 7 9 11 13 15 17 19;
              7 9 11 13 15 17 19 21;
              9 11 13 15 17 19 21 23;
              11 13 15 17 19 21 23 25;
              13 15 17 19 21 23 25 27;
              15 17 19 21 23 25 27 29;
              17 19 21 23 25 27 29 31];
   mtx = quanted_mtx.*quant_mtx;
endfunction
