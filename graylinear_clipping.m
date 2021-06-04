function [output] = graylinear_clipping(input,x1,y1,x2,y2)
[rows,columns] = size(input);
    
slope = (y2-y1)/(x2-x1);
intercept = y2 - slope*x2;
    for i=1:rows
        for j=1:columns
            if input(i,j) >= x1 && input(i,j) <=x2
                output(i,j) = slope*input(i,j) + intercept;
            elseif input(i,j) < x1
                output(i,j) = 0;
            else     
                output(i,j) = 255;
            end
            
         end
    end
    
    output = uint8(output);
end
