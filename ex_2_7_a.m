% 2.7(a)
nh = -1:1; h = [2 0 -2];
nx = 0:2; x = [1 0 1];

ny = -1:3;
y = conv(x,h);
figure(1);
stem(ny,y);
title('Graph for y[n] = x[n] * h[n]');
xlabel('n'); ylabel('y[n]');