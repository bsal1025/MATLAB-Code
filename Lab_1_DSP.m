%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Digital Signal Processing Lab 1
% Program Author: Brandon Salamone
% Submitted to: Dr. Ramachandran and Dima Dera
% Date: 1/25/2018
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ts = 0.01;                       % Sampling period ts = 1/fs = 1/100 = 0.01
f = [10 25 40 60 75 90];         % Matrix of frequencies
for n = 1:10;                    % Take 10 samples (n=1 to n=10)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Subplot 1: f = 10 hz
subplot(3,1,1);
x10(n) = sin(2*pi*f(1)*n*ts);
plot(x10);
title('Subplot 1: Sine Wave 10 Hz');
xlabel('n');
ylabel('Function Output');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Subplot 2: f = 25 hz
subplot(3,1,2);
x25(n) = sin(2*pi*f(2)*n*ts);
plot(x25);
title('Subplot 2: Sine Wave 25 Hz');
xlabel('n');
ylabel('Function Output');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Subplot 3: f = 40 hz
subplot(3,1,3);
x40(n) = sin(2*pi*f(3)*n*ts);
plot(x40);
title('Subplot 3: Sine Wave 40 Hz');
xlabel('n');
ylabel('Function Output');
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Start a new figure for part b of the lab
figure;
for n=1:10                             % Again vary n from 1 to 10
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Subplot 4: f = 60 hz
subplot(3,1,1);
x60(n) = sin(2*pi*f(4)*n*ts);
plot(x60);
title('Subplot 1: Sine Wave 60 Hz');
xlabel('n');
ylabel('Function Output');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Subplot 5: f = 75 hz
subplot(3,1,2);
x75(n) = sin(2*pi*f(5)*n*ts);
plot(x75);
title('Subplot 2: Sine Wave 75 Hz');
xlabel('n');
ylabel('Function Output');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Subplot 6: f = 90 hz
subplot(3,1,3);
x90(n) = sin(2*pi*f(6)*n*ts);
plot(x90);
title('Subplot 3: Sine Wave 90 Hz');
xlabel('n');
ylabel('Function Output');
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%