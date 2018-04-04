% 1.4(f)
% Not Time-invariant
n = -10:10;
x1 = n;
y1 = n.*x1;

figure(1);
subplot(321);                   % plot x[n]
stem(n,x1); title('x[n]'); xlabel('n');
subplot(322); xlabel('n');      % plot the response y1[n] of x[n]
stem(n,y1); title('y_{1}[n]'); xlabel('n');

subplot(323); xlabel('n');      % plot x[n-1]
stem(n+1,x1); title('x[n-1]'); xlabel('n');
axis([-10 10 -10 10]);
subplot(324); xlabel('n');      % plot the response y2[n] for x[n-1]
stem(n,(n-1).*x1); title('y_{2}[n]'); xlabel('n');

y3 = (n-1).*(x1-1);             % y3 = y[n-1]
subplot(325); xlabel('n');      % plot y[n-1]
stem(n,y3); title('y[n-1]'); xlabel('n');