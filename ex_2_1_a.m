% 2.1(a)
ny = 0:10;
x = ones(1,6);
y = zeros(1,11);

for i = 1:6                 % calculate y[n] by using for loops
  for j = 0:(i-1)
      y(i) = y(i) + x(i);
  end
end

for i = 7:11
    for j = (i-6):5
        y(i) = y (i) + x(i-6);
    end
end

stem(ny,y);
xlabel('n'); ylabel('x[n]*x[n]');
title('Graph for y[n]=x[n]*x[n]');