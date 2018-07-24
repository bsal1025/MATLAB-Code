%%%%%%%%%%%%%%%%%%%%%%%%%
% Problem 1
P1 = [1 7 2 9 10 12 15];
P2 = [1 9 8 9 12 15 20];
P3 = P1+P2;
P4 = P1-P2;
P5 = conv(P1,P2);
%%%%%%%%%%%%%%%%%%%%%%%%%
%Problem 2
P6 = poly([-7 -8 -3 -5 -9 -10]);
%%%%%%%%%%%%%%%%%%%%%%%%%%
%Problem 3
numG1 = [-2 -3 -6 -8]';
denG1 = [0 -7 -9 -10 -15]';
k = 20;

G1f = zpk(numG1, denG1,k);
[numtf,dentf] = zp2tf(numG1, denG1,20);
G1p = tf(numtf, dentf);
%%%%%%%%%%%%%%%%%%%%%%%%%%
%Problem 4
numG2 = [0 1 17 99 223 140];
denG2 = [1 32 363 2092 5052 320];
G2p = tf(numG2,denG2);
[numfzp,denfzp,f] = tf2zp(numG2,denG2);
G2f = zpk(numfzp,denfzp,f);
%%%%%%%%%%%%%%%%%%%%%%%%%%
%Problem 5
G31 = G1f+G2f;
G32 = G1f + G2p;
G33 = G1p+G2p;
G34 = G1p+G2f;


