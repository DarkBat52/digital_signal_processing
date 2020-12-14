img = imread("batman_jl.jpg");

edge_r = Roberts(img, 0.08);

figure, imshow(img);
figure, imshow(edge_r);

edge_s = Sobel(img, 0.48);

figure, imshow(edge_s);

edge_p = Previtt(img, 0.3);

figure, imshow(edge_p);