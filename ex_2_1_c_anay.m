% 2.1(c)
% analytical compution
nx = 0:5;
nh = 0:5;
ny = 0:10;
x = ones(1,6);
y = zeros(1,11);
h = zeros(1,6);

for i = 1:6
    h(i) = i-1;
end

for i = 1:6
  for j = 0:(i-1)
      y(i) = y(i) + (i-1) - j;
  end
end

for i = 7:11
    for j = (i-6):5
        y(i) = y (i) + (i-1) - j;
    end
end

stem(ny,y);
xlabel('n'); ylabel('x[n]*h[n]');
title('Graph for y[n]=x[n]*h[n]');