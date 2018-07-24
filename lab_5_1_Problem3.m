syms s
[Num,Den] = mason('example.net',1,5);
% G1 = 1/(s+10);
% G2 = 1/(s+1);
% G3 = (s+1)/(s^2+4*s+4);
% H1 = -((s+1)/(s+2));
% H2 = -2;
% H3 = -1;
% X1 = 1;
% X2 = 1;

num = sym(Num);
den = sym(Den);

X = num/den;

Y = simplify(X);
display(Y);

% syms G1 G2 G3 G4 H
% X = (((G3*G1)+(G2*G1*G1))/(G1+(G4*G3)+(G4*G2*G1)))*((1)/(1+(H)*(((G3*G1)+(G2*G1*G1))/(G1+(G4*G3)+(G4*G2*G1)))));
