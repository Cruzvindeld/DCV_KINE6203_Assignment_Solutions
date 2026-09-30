function [output1] = problem4(quarters,dimes,nickels, pennies)
%Write a function that takes in the number of quarters, dimes, nickels,
%and pennies as input and returns the total amount as output.
output1 = 25 * quarters + 10 * dimes + 5 * nickels + pennies;
end