% 2.7(c)
x = zeros(1,25);
for i = 3:25            % n = i - 1
    x(i) = 0.5.^(i-3);
end

h = ones(1,15);

ny = 0:38;
y = conv(x,h);
stem(ny,y,'r'); hold on;
stem(ny(16:length(ny)),y(16:length(y)),'b');
title('y[n] = h[n] * x[n]'); xlabel('n');
text(20,1.8,'The red part is correct values');