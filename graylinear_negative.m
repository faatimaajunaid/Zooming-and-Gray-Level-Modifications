function [output] = graylinear_negative(input,x1,y1,x2,y2)
[rows,columns] = size(input);
    
slope = (y2-y1)/(x2-x1);
intercept = y2 - slope*x2;
    for i=1:rows
        for j=1:columns
            
                output(i,j) = 255 - input(i,j);
            
            end
            
         end

    
    output = uint8(output);
end