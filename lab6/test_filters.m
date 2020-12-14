clear; 

img = imread("batman256.png");
img = rgb2gray(img);
img = im2double(img);

noise = gauss_dist(256, 256);
noised_img = img + noise;
%figure, imshow(noised_img);

denoised_img = iter(noised_img, @filter_ar_avg);
figure, imshow(denoised_img);
imwrite(denoised_img, "denoised\gauss_ar_avg.jpg");

denoised_img = iter(noised_img, @filter_geo_avg);
figure, imshow(denoised_img);
imwrite(denoised_img, "denoised\gauss_geo_avg.jpg");

denoised_img = iter(noised_img, @filter_harm_avg);
figure, imshow(denoised_img);
imwrite(denoised_img, "denoised\gauss_harm_avg.jpg");

denoised_img = iter(noised_img, @filter_counterharm_avg);
figure, imshow(denoised_img);
imwrite(denoised_img, "denoised\gauss_counterharm_avg.jpg");

denoised_img = iter(noised_img, @filter_median);
figure, imshow(denoised_img);
imwrite(denoised_img, "denoised\gauss_median.jpg");

denoised_img = iter(noised_img, @filter_max);
figure, imshow(denoised_img);
imwrite(denoised_img, "denoised\gauss_max.jpg");
;
denoised_img = iter(noised_img, @filter_min);
figure, imshow(denoised_img);
imwrite(denoised_img, "denoised\gauss_min.jpg");

denoised_img = iter(noised_img, @filter_mid_point);
figure, imshow(denoised_img);
imwrite(denoised_img, "denoised\gauss_mid_point.jpg");

denoised_img = iter(noised_img, @filter_alpha_avg);
figure, imshow(denoised_img);
imwrite(denoised_img, "denoised\gauss_alpha_avg.jpg");

noise = even_dist(256, 256);
noised_img = img + noise;

denoised_img = iter(noised_img, @filter_mid_point);
figure, imshow(denoised_img);
imwrite(denoised_img, "denoised\even_mid_point.jpg");

