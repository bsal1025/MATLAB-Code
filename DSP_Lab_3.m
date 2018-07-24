%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Digital Signal Processing Lab 3
% Program Author: Brandon Salamone
% Submitted to: Dr. Ramachandran and Dima Dera
% Date: 2/22/2018
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Problem 1
n = 0:200;

for i = 1:length(n)
    X1(i) = ((0.9)^n(i))*ustep(n(i),0);
end

num = 1;
num2 = -3:3;
for w = 0:(2*pi)/6:2*pi
    X0(num) = ((0.9)^num2(num))*ustep(num2(num),0) * exp(-1*1i*w*num2(num));
    num = num+1;
end
S = [];
S(1) = sum(X0);

num = 1;
num3 = -10:10;
for w = 0:(2*pi)/20:2*pi
    X2(num) = ((0.9)^num3(num))*ustep(num3(num),0) * exp(-1*1i*w*num3(num));
    num = num+1;
end
S(2) = sum(X2);

num = 1;
num4 = -20:20;
for w = 0:(2*pi)/40:2*pi
    X3(num) = ((0.9)^num4(num))*ustep(num4(num),0) * exp(-1*1i*w*num4(num));
    num = num+1;
end
S(3) = sum(X3);

S1 = [];
for K = 1:200
    num = 1;
    num5 = -K:K;
    for w = 0:(2*pi)/(2*K-1):2*pi
     X4(num) = ((0.9)^num5(num))*ustep(num5(num),0) * exp(-1*1i*w*num5(num));
     num = num+1;
    end
  S1(K) = sum(X4);
end


plot(X1); % good ready for report
title('Plot of x(n) = ((0.9)^n)*ustep(n,0)');
xlabel('n');
ylabel('Function Output');

X = (0.9).^n;
for i = 1:200
Sub1(i,:) = S1(i)-X;
A1 = abs(Sub1);
M(:,i) = max(A1(i,:));
end

F = fft(X);
F1 = fft(S);
figure
freqz(F); % good ready for report
title('Amplitude plot');

figure
freqz(F1); % good ready for report
title('Amplitude plot');

figure
plot(M); % good ready for report
title('Plot of Maximum Values');
xlabel('K');
ylabel('Max Value');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Problem 2
for i = 1:length(n)
    Z0(i) = n(i)*((0.9)^n(i))*ustep(n(i),0);
end
num = 1;
for w = 0:(2*pi)/6:2*pi
    Z1(num) = num2(num)*((0.9)^num2(num))*ustep(num2(num),0) * exp(-1*1i*w*num2(num));
    num = num+1;
end
T = [];
T(1) = sum(Z1);

num = 1;
for w = 0:(2*pi)/20:2*pi
    Z2(num) = num3(num)*((0.9)^num3(num))*ustep(num3(num),0) * exp(-1*1i*w*num3(num));
    num = num+1;
end
T(2) = sum(Z2);

num = 1;
num4 = -20:20;
for w = 0:(2*pi)/40:2*pi
    Z3(num) = num4(num)*((0.9)^num4(num))*ustep(num4(num),0) * exp(-1*1i*w*num4(num));
    num = num+1;
end
T(3) = sum(Z3);

S2 = [];
for K = 1:200 
    num = 1;
    num5 = -K:K;
    for w = 0:(2*pi)/(2*K-1):2*pi
     Z4(num) = num5(num)*((0.9)^num5(num))*ustep(num5(num),0) * exp(-1*1i*w*num5(num)); 
     num = num+1;
    end
  S2(K) = sum(Z4);
end
figure
plot(Z0); % good ready for report
title('Plot of x(n) = n*((0.9)^n)*ustep(n,0)');
xlabel('n');
ylabel('Function Output');

Z = n .*((0.9).^n); % good ready for report
for i = 1:200
Sub2(i,:) = S2(i)-Z;
A2 = abs(Sub2);
M1(:,i) = max(A2(i,:));
end
F2 = fft(Z);
F3 = fft(T);
figure
freqz(F2);
title('Amplitude plot');

figure
freqz(F3); % good ready for report
title('Amplitude plot');

figure
plot(M1); % good ready for report
title('Plot of Maximum Values');
xlabel('K');
ylabel('Max Value');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
t = -5:0.1:5;
P = 0.5*(ustep(t,0.4*pi)-ustep(t,-0.4*pi));
num = 1;
N = -50:50;
for n = 1:length(N)
p(n) = sin((0.4*pi)*N(n))/(pi*N(n));
end
figure
plot(N,p);
title('Plot of x(n) from -50 to 50');
xlabel('n');
ylabel('Function Output');

figure
plot(t,P);
title('Plot of X(e^jw) when wc = 0.4*pi');
xlabel('w');
ylabel('Function Output');


num6 = -2:2;
num = 1;
w = 0.4 * pi;
for num = 1:5
    if(num ~= 3)
        Y0(num) = sin((0.4*pi)*num6(num))/(pi*num6(num)) * exp(-1*i*w*num6(num));
    else
        Y0(num) = 0;
    end
end
S3 = [];
S3(1) = sum(Y0);


num7 = -2:2;
num = 1;
for num = 1:5
    if(num ~= 3)
        Y1(num) = sin((0.4*pi)*num7(num))/(pi*num7(num)) * exp(-1*i*w*num7(num));
    else
        Y1(num) = 0;
    end
end
S3(2) = sum(Y1);

num8 = -2:2;
num = 1;
for w = 0:(2*pi)/30:2*pi
    Y2(num) = sin((0.4*pi)*num8(num))/(pi*num8(num)) .* exp(-1*1i*w*num8(num));
    num = num+1;
end
S3(3) = sum(Y2);

