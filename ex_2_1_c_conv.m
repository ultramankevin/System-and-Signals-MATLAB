% 2.1(c)
% conv
ny = 0:10;
x = ones(1,6);
h = zeros(1,6);

for i = 1:6
    h(i) = i-1;
end

y = conv(x,h);

stem(ny,y);
xlabel('n'); ylabel('x[n]*h[n]');
title('Graph for y[n]=x[n]*h[n]');