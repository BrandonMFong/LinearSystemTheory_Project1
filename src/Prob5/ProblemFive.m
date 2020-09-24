% Time Scaling 
% time scaling 
fprintf('Problem 5!\n');

syms t w 
T = 0.5;
x1 = (heaviside(T-t)-heaviside(-T-t));
figure(1), ezplot(x1, [-3,3]),grid,title('xl=rect(t/1)')
T=0.1;
x2=(heaviside(T-t)-heaviside(-T-t));
figure(2),ezplot(x2,[-1,1]), grid, title('x2 = rect (t/0.2)')
X1 = fourier(x1);
X2 = fourier(x2);
ezplot(X1,-20,20), grid, title('Xl=F(x1)')
ezplot(X2, -100, 100), grid, title('X2 = F(x2)')