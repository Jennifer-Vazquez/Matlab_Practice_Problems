%Given that x is a 20 x 20 matrix, write a script that displays (in the
%command window) 'Even sum in column 9!' if the sum of the values in the
%9th column of x is even. The script should display 'Odd sum in column 9!'
%if the sum of values in the 9th column is x is odd 
sum = 0;
for i = 1:20
    sum = sum + x(i, 9);
end

if (mod(sum, 2) == 0)
    disp('Even sum in column 9')

else 
    disp('Odd sum in column 9');
end

