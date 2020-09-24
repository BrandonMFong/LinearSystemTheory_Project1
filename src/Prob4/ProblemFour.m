% Rectangular function and its Fourier Transform

fprintf('Problem 4!\n');

syms t w 
x = 4 * (heaviside(1-t) - heaviside(-1-t))
ezplot(x,-4,4)
X=fourier(x) 
figure(2), ezplot(X,-6,6),hold

