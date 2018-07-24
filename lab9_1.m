num=[1 2.89 0.279];
den=[1 19 74 56 0];
rlocus(num, den);
hold on
sgrid(0.5912, 8) 
hold off

% num = [1 0 1];
% den = [1 0 0];
%  sys = tf([num],[den]);
%  step(sys);
%controlSystemDesigner(sys)
