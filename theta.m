function s = theta( W,L,x,y,n)
% Function takes in length and width of rectangle, x and y position, and
% number of iterations n and outputs a matrix of theta values to the
% variable s
%  For loop creates a matrix of S values with one value for every iteration of n
for i = 1:n
    S(i) = (((((-1)^(i+1))+1)/i)*sin((i*pi*x)/L)*((sinh((i*pi*y)/L))/(sinh(i*pi*W/L))));
end
% This final portion of the function deals with the extra term outside of
% the summation symbol in the heat equation and the summation itself
s = (2/pi)*sum(S,2);
