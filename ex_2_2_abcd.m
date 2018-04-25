% 2.2 (a)-(d)
% define coefficient vectors
a1 = [1]; b1 = [0.5 1 2];
a2 = [1 -0.8]; b2 = [2];
a3 = [1 -0.8]; b3 = [0 2];

% compute the response on 1 <= n <=4 
x = [1 2 3 4];
y1 = filter(b1, a1,x);
y2 = filter(b2, a2,x);
y3 = filter(b3, a3,x);