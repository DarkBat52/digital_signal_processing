function cor = cor_table()
  
  img = imread("batman256.png");
  img = rgb2gray(img);
  img = im2double(img);
  
  cor = zeros(9, 6);

  noised_imgs = ["n_even_bat.jpg", 
                  "n_gauss_bat.jpg", 
                "n_log_bat.jpg", 
                "n_ray_bat.jpg", 
                "n_exp_bat.jpg",
                "n_gamma_bat.jpg"];
    
  noised_imgs = cellstr(noised_imgs);    
                

  filters = ["filter_ar_avg", 
              "filter_geo_avg", 
              "filter_harm_avg", 
              "filter_counterharm_avg", 
              "filter_median", 
              "filter_max", 
              "filter_min", 
              "filter_mid_point", 
              "filter_alpha_avg"];  
              
  filters = cellstr(filters);            
  
  for i=1:size(noised_imgs)(1,1)
    n_img = imread(char(noised_imgs(i,1)));
    n_img = im2double(n_img);
    for j=1:size(filters)(1,1)
      dn_img = iter(n_img, str2func(char(filters(j,1))));
      cor(j, i) = corr2(img, dn_img);
      disp(ctime(time));
      disp(cor);
    endfor  
  endfor  
              
endfunction