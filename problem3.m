function [out1] = problem3(a,b)
%Write a function that takes 2 numbers as inputs and returns Woo if
%their sum is even and Hah if their sum is odd 
Woo= a+b;
if mod(Woo,2)==0
    out1='Woo'
else 
    out1='Hah'
end 
