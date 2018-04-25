% 2.2 (e)-(g)
x = ones(1,6);
h = 0:5;

b = h;
y = filter(h,1,x);
ny = 0:5;

% plot the figure
stem(ny,y);
title('y[n]=x[n]*h[h] on 0\leqn\leq5');
xlabel('n');