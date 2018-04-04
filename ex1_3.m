% 1.3
nx = [ - 3:1:7];
x = [zeros(1,3) 2 0 1 -1 3 zeros(1,3)];
figure(1);
stem(nx,x);
xlabel('n');
ylabel('x[n]');
title('Graph for x[n]');

ny = [-3:1:7];
[y1,y2,y3,y4] = deal(x);
ny1 = ny + 2;
ny2 = ny - 1;
ny3 =  - ny;
ny4 =  - ny + 1;
ny = [ny1;ny2;ny3;ny4];
y = [y1;y2;y3;y4];

figure(2);
for i = 1:4
    subplot(2,2,i);
    stem(ny(i,:),y(i,:));
    xlabel('n');
    ylabel(sprintf('y%d[n]',i));
    title(sprintf('Graph for y%d[n]',i));
end