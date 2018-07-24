%*************************************************************
% Function to generate unit step 
% Input : time interval, signal advance/delay factor
% Output: Unit step response
%**************************************************************
 
function y = ustep(t,ad)
% generation of unit step
% t: time
% ad : advance (positive), delay (negative)
 
N= length(t);
y = zeros(1,N);
for i = 1:N,
    if t(i)>= -ad,
        y(i) = 1;
    else
        y(i) = -1;
    end
end
end