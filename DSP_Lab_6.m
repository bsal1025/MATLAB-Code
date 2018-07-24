% wp=0.25;
% ws=0.4;
% rp=20*log10(0.85);
% rs=20*log10(0.15);
% [n,wc] = buttord(wp,ws,rp,rs);
n = 5;
wc = 1-0.2943;
[b,a]=butter(n,wc,'high');
sys=tf(b,a);

[h,w]=freqz(b,a);
h=abs(h);
% plot magnitude response
figure(1)
plot(w/pi,h,'linewidth',2)
title('Magnitude Response');
xlabel('Frequency(rad)');
ylabel('Magnitude');
h1=20*log10(h);
% plot magnitude response in decibels
figure(2)
plot(w/pi,h1,'linewidth',2)
title('Magnitude Response in dB');
xlabel('Frequency(rad)');
ylabel('Magnitude (dB)');
