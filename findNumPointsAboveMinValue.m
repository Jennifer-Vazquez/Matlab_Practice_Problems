%Write a matlab function named findNumPointsAboveMin() that takes in two
%input arguments: (1) a columnVector and(2) a minimum value. The function
%should return one output value: the number of data points that are equal
%or above  the minimum value
function [count] = findNumPointsAboveMinValue(columnVector,minValue)
count = 0;
lengthOfVector = length(columnVector);

for index = 1:lengthOfVector
    if(columnVector(index) >= minValue)
        count = couunt + 1;
    end
end

