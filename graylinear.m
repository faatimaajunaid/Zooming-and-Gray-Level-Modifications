function [output] = graylinear(input,x1,y1,x2,y2)
[rows,columns] = size(input);
    
slope = (y2-y1)/(x2-x1);
intercept = y2 - slope*x2;
    for i=1:rows
        for j=1:columns
            if input(i,j) >= x1 && input(i,j) <=x2
              output(i,j) = intercept + slope*input(i,j);
           else
                output(i,j) = input(i,j);
            end
            
         end
    end
    
    output = uint8(output);
end

