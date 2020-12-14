function [cmp, quality, cmp_ratio, cor] = compress(img_path, mask)
  img = imread(img_path);
  img = rgb2gray(img);
  %img = im2double(img);
  
  %figure, imshow(img);
  img = cast(img, "double");
  cmp = blockproc(img, [8 8], @direct_dct);  
  %figure, imshow(cmp);
  cmp = blockproc(cmp, [8 8], @quant);
  cmp = blockproc(cmp, [8 8], @apply_mask, mask);
  cmp = blockproc(cmp, [8 8], @dequant);
  %figure, imshow(cmp);
  cmp = blockproc(cmp, [8 8], @invert_dct);
  cmp = cast(cmp, "uint8");
  %figure, imshow(cmp);
  %compute quality difference by calculating standart deviation
  %from original image
  path = "temp.jpg";
  quality = size(img)(1,1)^2/sum(sum((img - cmp).^2));
  imwrite(cmp, ["cmp" path]);
  img = cast(img, "uint8");
  imwrite(img, ["ucmp" path]);
  cmp_ratio = compressRatio(["cmp" path], ["ucmp" path]);
  cor = corr2(cmp, img);
endfunction
