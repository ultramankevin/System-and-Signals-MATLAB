% 1.6(a)
syms t T;
x = sym('sin(2*pi*t/T)');
x5 = subs(x,'T',5);
ezplot(x5,[0,10]);