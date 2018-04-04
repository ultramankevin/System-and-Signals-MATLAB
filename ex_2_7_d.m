% 2.7(d)
n = 0:99;
h = zeros(1,100);
x = zeros(1,100);
for i = 0:10
    h(i+1) = (0.9).^i;
end

for i = 0:99
    x(i+1) = cos(i.^2).*sin(2.*pi.*i/5);
end

y = conv(h,x);
figure(1);
stem(n,y(1:100));
title('Graph for y[n] = h[n] * x[n]');
xlabel('n'); ylabel('y[n]');