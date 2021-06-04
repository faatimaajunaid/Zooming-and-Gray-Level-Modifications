function [output] = graylinear_slicing_black(input,x1,y1,x2,y2)
[rows,columns] = size(input);
    

    for i=1:rows
        for j=1:columns
            if input(i,j) >= x1 && input(i,j) <=x2
              output(i,j) = 255;
           else
                output(i,j) = 0;
            end
            
         end
    end
    
    output = uint8(output);
end