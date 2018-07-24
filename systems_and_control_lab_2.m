%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%4.1
% % Part 1
% a = 4; % 1,2,3,4
% sys = tf([a],[1 a]);
% step(sys);
% figure
% zplane([1 a],a);
% grid
% title('Pole/Zero Plot');
% 
% S = stepinfo(sys);
% display(S);

% % Part 2(a)
% a = 16;
% b = 400;
% sys = tf([b],[1 a b]);
% step(sys);
% figure
% zplane([1 a b],b);
% grid
% title('Pole/Zero Plot');
% 
% S = stepinfo(sys);
% display(S);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%4.2
%Part 1(a)
% sys = tf([25],[1 4 25]);
% step(sys);
% figure
% zplane([1 4 25],25);
% grid
% title('Pole/Zero Plot');
% 
% S = stepinfo(sys);
% display(S);

% % Part 1(b)
% x1 = [1 200];
% x2 = [1 4 25];
% X = conv(x1,x2);
% sys = tf([25],X);
% step(sys);
% figure
% zplane(X,25);
% grid
% title('Pole/Zero Plot');
% S = stepinfo(sys);
% display(S);

% % Part 1(c)
% x1 = [1 2]; % Value of 2nd number goes 20, 10, 2, separate runs
% x2 = [1 4 25];
% X = conv(x1,x2);
% sys = tf([25],X);
% step(sys);
% figure
% zplane(X,25);
%  grid
%  title('Pole/Zero Plot');
% S = stepinfo(sys);
% display(S);

% % Part 2
% X = 25 *[2 4]; % 2nd number goes 400,100,40,20,10,4
% sys = tf(X,[1 4 25]);
% step(sys);
% figure
% zplane([1 4 25],X);
% 
% S = stepinfo(sys);
% display(S);

% Part 3 
a = 3;
b = 4; % 3.01, 3.1, 3.3, 3.5, 4 
x1 = [1 b];
x2 = [1 4 25];
X = conv(x1,x2);
y1 = [1 a];
y2 = [(25*b)/a];
Y = conv(y1,y2);
sys = tf(Y,X);
step(sys);
figure
zplane(X,Y);
S = stepinfo(sys);
display(S);

% % Part 4 
% a = 30;
% b = 40; % 30.01, 30.1, 30.5, 31, 35, 40 
% x1 = [1 b];
% x2 = [1 40 2500];
% X = conv(x1,x2);
% y1 = [1 a];
% y2 = [(2500*b)/a];
% Y = conv(y1,y2);
% sys = tf(Y,X);
% step(sys);
% figure
% zplane(X,Y);
% 
% S = stepinfo(sys);
% display(S);