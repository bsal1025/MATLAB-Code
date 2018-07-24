figure('name','Post-Lab 8.2 Problem 2 Unit Step Response','NumberTitle','off');
hold on
    sim('Lab_8_2');
    plot(simout.data);
    title('Lab 8.2 Problem 2 Unit Step Response');
    xlabel = 'value';
    results = stepinfo(simout.data,simout.time);
hold off