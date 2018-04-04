% Not invertible
n = -5:5;
x1 = [rand(1,5) 0.5 rand(1,5)];
x2 = x1; x2(6) = 1;

subplot(221);stem(n,x1);        % plot x1[n]
title('x_{1}[n]');xlabel('n');

subplot(222);stem(n,x2);        % plot x2[n]
title('x_{2}[n]');xlabel('n');

subplot(223);stem(n,n.*x1);     % plot y1[n]
title('y_{1}[n]');xlabel('n');

subplot(224);stem(n,n.*x2);     % plot y2[n]
title('y_{2}[n]');xlabel('n');