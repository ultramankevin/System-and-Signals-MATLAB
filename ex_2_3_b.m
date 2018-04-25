% 2.3 (b)
t = [0:1:10];
b = 1;
a = [1 0.5];
s = step(b,a,t);
h = impulse(b,a,t);

figure(1);
plot(t,s,'b--','LineWidth',1); xlabel('t');
title('The Step Response'); xlabel('t');

figure(2);
plot(t,h,'r--','LineWidth',2); xlabel('t');
title('The Impulse Response'); xlabel('t');
hold on;
h1 = exp(-t./2);    % the derivative of s(t)
plot(t,h1,'b--','LineWidth',1.5);
legend('returned by impulse','the exact impulse response');