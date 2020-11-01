a = [
1 2 3;
4 5 6;
];
% a = input("Enter a 2X3 matrix ")
b = [
7 8 9;
1 5 7;
];

c = a + b

% Plot this way in scripts to prevent the window from closing itself
% figure % Spawns new window for the plot
subplot(2,1,1) % Used to plot multiple graphs in same window
h = plot(a, c)
xlabel('Exes')
ylabel('Whys')
title('Test1')
grid on % Show grid on plot

% figure
subplot(2,1,2) % Used to plot multiple graphs in same window
j = stem(a, c)
xlabel('Exes')
ylabel('Whys')
title('Test2')
grid on % Show grid on plot
waitfor(gcf) % Waits until the window is manually closed
