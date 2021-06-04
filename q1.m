A = imread('coloredChips.png');
z = 2; %zoom factor

[rows,columns,dim] = size(A);
C = [0.25 0.5 0.25; 0.5 1 0.5; 0.25 0.5 0.25];
B = zeros(z*rows+1,z*columns+1,3);


for i=1:rows
    for j=1:columns
        for k=1:dim
            B(z*i,z*j,k) = A(i,j,k);
        end
    end
end

[rows1,columns1,dim1] = size(B);

D=B;
for i=2:rows1-1
    for j=2:columns1-1
        for k=1:dim1
             D(i,j,k) = sum(dot(C,B(i-1:i+1,j-1:j+1,k)));
        end
    end
end

D = uint8(D);
hold on

figure
imshow(A)

title('original');


figure 
imshow(D)
imwrite(D,'output.png')
title('zoomed');

hold off




