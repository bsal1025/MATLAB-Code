value = [50 500 1000 5000];
figure('name','Lab 7.1 Problem 1 Unit Step Response','NumberTitle','off');
hold on
for i = 1:3
    K = value(i);
    sim('Lab_7_1');
    plot(simout.data);
    title('Lab 7.1 Problem 1 Parabolic Response');
    xlabel = 'K value';
    results(i) = stepinfo(simout.data,simout.time);
end
hold off

figure('name','Lab 7.1 Problem 2 Ramp Response','NumberTitle','off');
hold on
for i = 1:3
    K = value(i);
    sim('Lab_7_1');
    plot(simout1.data);
    title('Lab 7.1 Problem 2 Parabolic Response');
    results(i) = stepinfo(simout1.data,simout1.time);
end
hold off

value1 = [200 400 800 1000];
figure('name','Lab 7.1 Problem 3 Ramp Response','NumberTitle','off');
hold on
for i = 1:3
    K = value1(i);
    sim('Lab_7_1');
    plot(simout2.data);
    title('Lab 7.1 Problem 3 Parabolic Response');
    xlabel = 'K value';
    results(i) = stepinfo(simout2.data,simout2.time);
end
hold off