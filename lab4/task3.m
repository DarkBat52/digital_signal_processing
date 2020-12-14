img = imread("batman_jl.jpg");
res = splitmerge(img, 8, 15, 0, 500);
figure, imshow(img);
figure, imshow(res);