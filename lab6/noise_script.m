clear; 

img = imread("batman256.png");
img = rgb2gray(img);
img = im2double(img);

noise = even_dist(256, 256);
noised_img = img + noise;
figure, imshow(noised_img);
imwrite(noised_img, "n_even_bat.jpg");

noise = gauss_dist(256, 256);
noised_img = img + noise;
figure, imshow(noised_img);
imwrite(noised_img, "n_gauss_bat.jpg");

noise = log_normal_dist(256, 256);
noised_img = img + noise;
figure, imshow(noised_img);
imwrite(noised_img, "n_log_bat.jpg")

noise = rayleigh_dist(256, 256);
noised_img = img + noise;
figure, imshow(noised_img);
imwrite(noised_img, "n_ray_bat.jpg");

noise = exp_dist(256, 256);
noised_img = img + noise;
figure, imshow(noised_img);
imwrite(noised_img, "n_exp_bat.jpg");

noise = gamma_dist(256, 256);
noised_img = img + noise;
figure, imshow(noised_img);
imwrite(noised_img, "n_gamma_bat.jpg");