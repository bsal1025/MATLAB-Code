%*************************************************************
% Function to generate ramp 
% Input : time support, slope of ramp, signal advance/delay factor
% Output: Unit step response
%**************************************************************

% ramp generation
% t: time support
% m: slope of ramp
% ad: advance (positive), delay(negative) factor

function y = ramp(t,m,ad)
N = length(t);
y = zeros(1,N);

for i = 1:N,
    if t(i) >= -ad,
        y(i) = m*(t(i) +ad);
    end
end
end