% 2.4
x1 = [ones(1,5) zeros(1,5)];
h1 = [1 -1 3 0 1];
h2 = [0 2 5 4 -1];

nx1 = 0:9;
nh1 = 0:4;

figure(1);
subplot(311); stem(nx1,x1);
title('x_{1}[n]'); xlabel('n');
subplot(312); stem(nh1,h1);
title('h_{1}[n]'); xlabel('n');
subplot(313); stem(nh1,h2);
title('h_{2}[n]'); xlabel('n');

w = conv(x1,h1);
y_d1 = conv(w,h2);

h_series = conv(h1,h2);
y_d2 = conv(x1,h_series);

ny = 0:17;
figure(2);
subplot(211); stem(ny,y_d1);
title('y_{d1}[n]'); xlabel('n');
subplot(212); stem(ny,y_d2);
title('y_{d2}[n]'); xlabel('n');