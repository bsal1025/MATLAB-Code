%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Digital Signal Processing Lab 4
% Program Author: Brandon Salamone
% Submitted to: Dr. Ramachandran and Dima Dera
% Date: 3/08/2018
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Problem 1
n = [0:7];
m = 3;
for w = 1:8
X(w) = cos((2*pi*m*n(w))/8);
end
Xdft1 = fft(X,8);

subplot(2,1,1);
plot(X);
title('Plots of x(n) and its DFT x(k)');
xlabel('n');
subplot(2,1,2); 
plot(n,abs(Xdft1));
xlabel('k');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Problem 2
t = 0:1:7;
X1 = [ones(1,8)];
Xdft2 = fft(X1,8);
figure
subplot(2,1,1)
plot(t,X1);
title('Plots of x(n) and its DFT x(k)');
xlabel('n');
subplot(2,1,2)
plot(abs(Xdft2));
xlabel('k');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Problem 3 
n1 = [0:31];
for n1 = 1:length(n1)
X2(n1) = ((0.9)^n1)*cos(0.1*pi*n1);
end
Xdft3 = fft(X2,32);
Xdct1 = dct(X2);

figure
subplot(4,1,1)
plot(X2);
title('x(n)');

subplot(4,1,2)
plot(real(Xdft3));
title('Real Part of x(k)');

subplot(4,1,3)
plot(imag(Xdft3));
title('Imaginary Part of x(k)');

subplot(4,1,4)
plot(Xdct1);
title('DCT of x(n)');

for M = 1:16
XmDFT(M,:) = Xdft3;
if(M == 1)
    XmDFT(1,16) = 0;
elseif(M > 1)
    XmDFT(M,(16-(M-1)):(16+(M-1))) = 0;
end
end

Xmidft = ifft(XmDFT,32,2);

for i = 1:16
    A(i,:) = X2-Xmidft(i,:);
end

 B = (abs(A)).^2;
 ErrorDFt = sum(B,2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for M = 1:31
XmDCT(M,:) = Xdct1;
XmDCT(M,31) = 0;
if(M > 1)
    XmDCT(M,(32-M):31) = 0;
end
end

Xmidct = idct(XmDCT,32,2);
for j = 1:31
    C(j,:) = X2-Xmidct(j,:);
end

 D = (abs(C)).^2;
 ErrorDCt = sum(D,2);
 
 figure
 plot(ErrorDFt);
 title('Plot of ErrorDFT and ErrorDCT');
 xlabel('m Value');
 ylabel('Error');
 
 hold on
 plot(ErrorDCt);
 xlabel('m Value');
 ylabel('Error');
 hold off
 
 figure % part e
 plot(abs(Xmidft(13,:)));
 title('Plot of Xmidft');
 xlabel('n Value');
 ylabel('Function Output');
 figure
 plot(Xmidct(25,:));
 title('Plot of Xmidct');
 xlabel('n Value');
 ylabel('Function Output');
