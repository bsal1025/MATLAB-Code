%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Digital Signal Processing Lab 5
% Program Author: Brandon Salamone
% Submitted to: Dr. Ramachandran and Dima Dera
% Date: 3/29/2018
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Problem 1

I = imread('cameraman.tif');

J = imnoise(I,'salt & pepper',0.2);

subplot(1,2,1)
imshow(I);
title('Unaltered Image');

subplot(1,2,2)
imshow(J);
title('Image with 20% Salt & Pepper Noise');

Avg_Filter = filter2(fspecial('average'),J);
K = mat2gray(Avg_Filter);

figure
subplot(1,2,1)
imshow(K);
title('Average Filter 20%');

Med_Filter = medfilt2(J);

subplot(1,2,2)
imshow(Med_Filter);
title('Median Filter 20%');

%Problem 2

SP = imnoise(I,'salt & pepper',0.3);

figure
subplot(1,2,1)
imshow(I)
title('Unaltered Image');

subplot(1,2,2)
imshow(SP);
title('Image with 30% Salt & Pepper Noise');

Avg_Filter2 = filter2(fspecial('average'),SP);
M = mat2gray(Avg_Filter2);

figure
subplot(1,2,1)
imshow(M);
title('Average Filter 30%');

Med_Filter2 = medfilt2(SP);

subplot(1,2,2)
imshow(Med_Filter2);
title('Median Filter 30%');


