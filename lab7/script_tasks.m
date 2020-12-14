
img = imread("inconspicuous_cat_bw.jpg");
data = imread("qr.jpg");

hidden = hide_data(img, data);

figure, imshow(img);
figure, imshow(hidden);
imwrite(hidden, "hidden.bmp")

cor = corr2(img, hidden);

disp(["last bits corr " num2str(cor)]);

revealed = reveal_data(hidden);
figure, imshow(revealed);
imwrite(revealed, "revealed.bmp")


img = imread("cat_bw.bmp");

hidden = hide_pseudo(img, data);
imwrite(hidden, "hidden_pseudo.bmp")

figure, imshow(img);
figure, imshow(hidden);

cor = corr2(img, hidden);

disp(["pseudo bw corr " num2str(cor)]);

revealed = reveal_pseudo(hidden, 200);
imwrite(revealed, "revealed_pseudo.bmp")
figure, imshow(revealed);

figure, imhist(img);
figure, imhist(hidden);