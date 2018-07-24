%*************************************************************
% Lab2: Continuous-time Systems
% Problem 1: Script to generate and plot unit step response
% Inputs: time support and sampling steps of the signal
% Output: unit step response
% Reference: Signals and Systems with Matlab, Chaparro Luis F.
%**************************************************************
clear all; 
clf
Ts = 1;   % Sampling time
t = 0:Ts:25; % support of signal
NP = 51;
% unit-step function with support [-5,5], delayed by 3
y = ustep(t,0)-ustep(t,-21);
plot(t,y); 
axis([-10 25 -2 2]);
title('IF(t)');
xlabel('time (seconds)');
ylabel('y(t)');
grid;

