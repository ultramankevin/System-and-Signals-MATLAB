% 1.2(d)
n = 0:1:31;
x1 = sin(pi*n/4).*cos(pi*n/4);
figure(1);
stem(n,x1);
xlabel('The n');
ylabel('The x1');
title('Graph for x1');

x2 = cos(pi*n/4).^2;
figure(2);
stem(n,x2);
xlabel('The n');
ylabel('The x2');
title('Graph for x2');

x3 = sin(pi*n/4).*cos(pi*n/8);
figure(3);
stem(n,x3);
xlabel('The n');
ylabel('The x3');
title('Graph for x3');