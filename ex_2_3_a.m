% 2.3 (a)
t = [0:0.5:10];
x = ones(1,length(t));
x(1:4) = 0;

b = 1;
a = [1 2];
s = lsim(b,a,x,t);
plot(t,s,'--','LineWidth',1);
title('Response to x(t) = u(t-2)');
xlabel('t');