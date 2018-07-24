%*************************************************************
% Function to generate unit step 
% Input : time interval, signal advance/delay factor
% Output: Unit step response
%**************************************************************
 
function y = pulse(t,NP)
% generation of unit step
% t: time

deltaH = 26;
f = 159:deltaH:161;
for i = 1:NP
    y(i) = 10*cos((2*pi*f*t(i)));
end
end