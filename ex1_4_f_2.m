% Not stable
n = 0:10;
x = ones(1,size(n,2));  % difine x[n] = u[n]
y = n.*x;               % y[n] = n * x[n]

subplot(211);stem(n,x);
title('x[n]');xlabel('n');
subplot(212);stem(n,y);
title('y[n]');xlabel('n');