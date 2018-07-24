% sys1 = tf([1],[1 1]);
% sys2 = tf([1],[1 4]);
% sys3 = tf([1 3],[1 5]);
% 
% sys4 = sys1*sys2*sys3;
% step(sys4);
% S = stepinfo(sys4);

% sim('Lab_5_1_Problem1');
% results = stepinfo(simout.data,simout.time);

syms K

G = ((4*K)-(0.25*K^2))/(4-(0.25*K));

