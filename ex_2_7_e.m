% 2.7(e)
n1 = 0:49;
n2 = 50:99;
h = zeros(1,100);
x1 = zeros(1,50);
x2 = zeros(1,50);
for i = 0:10
    h(i+1) = (0.9).^i;
end

for i = 0:49
    x1(i+1) = cos(i.^2).*sin(2.*pi.*i/5);
end

for i = 50:99
    x2(i+1) = cos(i.^2).*sin(2.*pi.*i/5);
end

y1 = conv(h,x1);
y2 = conv(h,x2);

ny = 0:length(y1)-1;
figure(1);
stem(n1,y1(1:50)); hold on;
stem(n2,y2(51:100));
title('Graph for y[n] = h[n] * x[n]');
xlabel('n'); ylabel('y[n]');