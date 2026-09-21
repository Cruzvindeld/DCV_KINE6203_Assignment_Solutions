function [outputArg1] = difference(inputArg1,inputArg2)
%take input 1 and 2 and subtract the smaller number from the larger number.
% subtract smaller input from larger input

if (inputArg2>=inputArg1)
    outputArg1= inputArg2-inputArg1;
else (inputArg1>=inputArg2)
    outputArg1 = inputArg1 - inputArg2;
end
