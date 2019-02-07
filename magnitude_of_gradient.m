%Read and display the input image
I = imread('checkerboard.tif');
figure
imshow(I);
hold on;

%Compute the integral image.
intImage = integralImage(I);

%sobel: Calculate the gradient magnitude and direction using the directional gradients.
[Gx,Gy] = imgradientxy(I,'sobel');

%Prewitt: Calculate the gradient magnitude and direction using the directional gradients.
[Gx,Gy] = imgradientxy(I,'sobel');

%show the gradient magnitude and direction.
figure
[Gmag,Gdir] = imgradient(Gx,Gy);
imshowpair(Gmag,Gdir, 'montage');

