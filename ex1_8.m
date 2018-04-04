% 1.8
syms t a;
x1 = cos(pi*t/5);    % T = 10
x2 = sin(pi*t/5);    % T = 10
x3 = exp(1i*2*pi*t/3)+exp(1i*pi*t);    % T = 6

figure(1);
subplot(221); ezplot(x1,[-10,10]); title('x1');
subplot(222); ezplot(x2,[-10,10]); title('x2');
subplot(223); ezplot(real(x3),[-6,6]); title('Real(x3)');
subplot(224); ezplot(imag(x3),[-6,6]); title('Imag(x3)');

E1 = int(x1.^2,t,[-a,a]);
E2 = int(x2.^2,t,[-a,a]);
E3 = int(x3.*conj(x3),t,[-a,a]);

E1_peroid = eval(subs(E1,'a',5));
E2_peroid = eval(subs(E2,'a',5));
E3_peroid = eval(subs(E3,'a',3));

figure(2);
subplot(311); ezplot(E1,[0,30]); title('The energy of x1');
subplot(312); ezplot(E2,[0,30]); title('The energy of x2');
subplot(313); ezplot(E3,[0,30]); title('The energy of x3');

P1 = E1./(2*a); P2 = E2./(2*a); P3 = E3./(2*a);
figure(3);
subplot(311); ezplot(P1,[0.1,60]); title('The power of x1');
subplot(312); ezplot(P2,[0.1,60]); title('The power of x2');
subplot(313); ezplot(P3,[0.1,60]); title('The power of x3');

simplify(P1+P2);