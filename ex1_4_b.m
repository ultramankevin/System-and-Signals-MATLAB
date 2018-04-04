% 1.4(b)
nx = -5:9;
x = [nx>=0];    % x[n] = u[n]

subplot(211);
stem(nx,x);
title('x[n]'); xlabel('n'); axis([-5 9 0 2]);

ny = -6:9;
y = [0 nx>=0] + [0 nx>=-1];

subplot(212);
stem(ny,y);
title('y[n] = x[n] + x[n+1]');
xlabel('n'); axis([-6 9 0 2]);