
A = imread('cameraman.tif');
%A = imread('pout.tif');
figure
imshow(A)
title('original');

O1 = graylinear(A,28,28,75,180);
figure
imshow(O1)
imwrite(O1,'output_linear.tif')
title('linear');

O2 = graylinear_negative(A,0,255,255,0); 
figure
imshow(O2)
imwrite(O2,'output_linear_negative.tif')
title('linear negative');

O3 = graylinear_clipping(A,80,0,180,255);
figure
imshow(O3)
imwrite(O3,'output_linear_clipping.tif')
title('linear clipping');

O4 = graylinear_slicing(A,150,150,200,200); 
figure
imshow(O4)
imwrite(O4,'output_linear_slicing.tif')
title('linear slicing');

O5 = graylinear_slicing_black(A,150,150,200,200); 
figure
imshow(O5)
imwrite(O5,'output_linear_slicing_black.tif')
title('linear slicing black');

O6 = graynonlinear(A,0,0,80,180,255,255); 
figure
imshow(O6)
imwrite(O6,'output_nonlinear.tif')
title('nonlinear');


