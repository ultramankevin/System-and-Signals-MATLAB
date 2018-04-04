% 2.1(b)
ny = 0:10;
x = ones(1,6);
y = conv(x,x);

stem(ny,y);
xlabel('n'); ylabel('x[n]*x[n]');
title('Graph for y[n]=x[n]*x[n]');