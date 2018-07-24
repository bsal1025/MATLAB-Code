%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Digital Signal Processing Lab 2
% Program Author: Brandon Salamone
% Submitted to: Dr. Ramachandran and Dima Dera
% Date: 2/08/2018
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Problem 1
Ts = 1;   % Sampling time
t = 0:Ts:20; % support of signal
n = 0:9;
for i = 1:50
X1(i) = 5*cos((pi/4)^2*i)*ustep(i,0);

X2(i) = 5*(abs((1+1i)/2)^i)*ustep(i,0);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Problem 2
y = -50:50;
for i = 1:length(y)
X3(i) = cos(pi*y(i)/3);

X4(i) = cos(pi*y(i)/3)+cos(pi*y(i)/4);

X5(i) = cos(sqrt(2*y(i))+(pi/6));
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Problem 3
for j = 1:9
X6(j) = ((1.2)^j)*(ustep(j,0)-ustep(j,-21));
end
Y1 = upsample(X6,3);
Y2 = downsample(Y1,3);

Y3 = downsample(X6,3);
Y4 = upsample(Y3,3);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Problem 4
for w = 1:50  %1500
X7(w) = (1/w)*(ustep(w,-1));
end
sumx7 = sum(X7.^2,2);
syms k;
for x = 1:1500
S(x) = symsum(abs((1/k))^2,1,x);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
plot(X1);
title('Plot of x(n) = 5*cos((pi/4)^2*n))');
xlabel('n');
ylabel('Function Output');

figure
hold on
plot(X2);
title('Plot of x(n) = 5*(abs((1+1i)/2)^n)');
xlabel('n');
ylabel('Function Output');
hold off

figure
hold on
plot(y,X3);
title('Plot of x(n) = cos(pi*n/3)');
xlabel('n');
ylabel('Function Output');
hold off

figure
hold on
plot(y,X4);
title('Plot of x(n) = cos(pi*n/3)+cos(pi*n/4)');
xlabel('n');
ylabel('Function Output');
hold off

figure
hold on
plot(y,X5);
title('Plot of x(n) = cos(sqrt(2*y(n))+(pi/6))');
xlabel('n');
ylabel('Function Output');
hold off

figure
hold on
plot(X6);
title('Plot of x(n) = ((1.2)^n)*(ustep(n,0)-ustep(n,-21))');
xlabel('n');
ylabel('Function Output');
hold off

figure
hold on
plot(Y2);
title('Signal Upsampled by 3, then Downsampled by 3');
xlabel('n');
ylabel('Function Output');
hold off

figure
hold on
plot(Y4);
title('Signal Downsampled by 3, then Upsampled by 3');
xlabel('n');
ylabel('Function Output');
hold off

figure
hold on
plot(X7);
title('Plot of x(n) = (1/n)*(ustep(n,-1))');
xlabel('n');
ylabel('Function Output');
hold off