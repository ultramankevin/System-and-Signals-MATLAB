% 1.4(c)
n = 0:10;
x = (exp(1)).^(-n);

subplot(211);
stem(n,x);                  % plot x[n] = e^(-n)*u[n]
title('x[n] = e^{-n}u[n]');
xlabel('n');

y = log(x);
subplot(212);
stem(n,y);                  % plot y[n]
title('y[n] = log(x[n])');
xlabel('n');