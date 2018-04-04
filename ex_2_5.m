% 2.5
n = 0:19;
delta = [1 zeros(1,19)];

y1_a = [1 -0.6]; y1_b = [1 0];
h1 = filter(y1_b,y1_a,delta);
h2 = ones(1,20);
for i = 2:20
    accum = cumsum(1:1:i-1);
    h2(i) = (0.6).^(accum(end));
end

figure(1);
subplot(211);stem(n,h1);
title('h_{1}[n]'); xlabel('n');
subplot(212);stem(n,h2);
title('h_{2}[n]'); xlabel('n');

u = ones(1,20);
s1 = filter(y1_b,y1_a,u);
s2 = ones(1,20);
for i = 2:20
    s2(i) = 1 + (0.6).^(i-1).*s2(i-1);
end

z1_temp = conv(h1,u);
z2_temp = conv(h2,u);
z1 = z1_temp(1:20);
z2 = z2_temp(1:20);

figure(2);
stem(n,s1,'-*r');
hold on;
stem(n,z1,'-ob');
legend('s_{1}[n]','z_{1}[n]');
title('Graph for s_{1}[n] & z_{1}[n]');
xlabel('n');

figure(3);
subplot(211); stem(n,s2);
title('s_{2}[n]'); xlabel('n');
subplot(212); stem(n,z2);
title('z_{2}[n]'); xlabel('n');