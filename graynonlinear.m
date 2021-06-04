function [output] = graynonlinear(input,x1,y1,x2,y2,x3,y3)
[rows,columns] = size(input);
    
slope1 = (y2-y1)/(x2-x1);
intercept1 = y2 - slope1*x2;

slope2 = (y3-y2)/(x3-x2);
intercept2 = y3 - slope2*x3;



    for i=1:rows
        for j=1:columns
            if input(i,j) >= x1 && input(i,j) <=x2
              output(i,j) = intercept1 + slope1*input(i,j);
           else
                output(i,j) = intercept2 + slope2*input(i,j);
            end
            
         end
    end
    
    output = uint8(output);
end

