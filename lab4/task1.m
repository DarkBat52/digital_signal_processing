%Read image from file
img = imread("wonder-woman-bw.jpg");
%Create seed array and fill in the seeds
seeds = zeros(size(img));
seeds(300, 300) = 1;
seeds(240, 352) = 1;
seeds(240, 360) = 1;
%Call regiongrow function to seperate image by regions
[g NR SI] = regiongrow(img, seeds, 30);
%Show created images and save them to files
figure, imshow(g);
imwrite(g, "ww-region.jpg");
figure, imshow(img);
imwrite(SI, "ww-seeds.jpg");
figure, imshow(SI);
img(~g) = 0;
figure, imshow(img);
imwrite(img, "ww-mask.jpg");
