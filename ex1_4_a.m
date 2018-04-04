% 1.4(a)
n = -5:5;
x1 = [(n - 0) == 0];    % Generate unit impulse sequence x1
x2 = 2.*x1;             % x2 = 2x1

input = [x1; x2; x3];
% Plot the graph for x1, x2 and x3
for i = 1:2
    subplot(2,2,i);
    stem(n,input(i,:)); axis([-5 5 -3 3]);
    title(sprintf('Graph for x_{%d}[n]',i));
    xlabel('n');
end

y1 = sin((pi./2).*x1);
y2 = sin((pi./2).*x2);

% plot the graph for response of y1, y2
subplot(223); stem(n,y1);
title('Graph for y_{1}[n]'); xlabel('n');
subplot(224); stem(n,y2);
title('Graph for y_{2}[n]'); xlabel('n');