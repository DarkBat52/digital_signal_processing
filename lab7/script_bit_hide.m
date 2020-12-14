clear;

img = imread("inconspicuous_cat_bw.bmp");
data = imread("qr.jpg");
   
g = hide_data(img, data);
   
imwrite(g ,"hidden.bmp");
figure, imshow(img);
figure, imshow(g);
figure, imshow(data);

img = imread("hidden.bmp");
g = reveal_data(g);

figure, imshow(g);
imwrite(g ,"revealed.bmp");