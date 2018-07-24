value = [0.5 32/27 4 16];
figure('name','Lab_6.1','NumberTitle','off');
hold on
for i = 1:4
    K = value(i);
    sim('Lab6_1');
    plot(simout.data);
    results(i) = stepinfo(simout.data,simout.time);
end
hold off