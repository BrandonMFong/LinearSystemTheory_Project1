% Fourier series of a square wave.

fprintf('Problem 1!\n');

% from text 
syms C1 ker t
w0 = 2*pi;k=1;
ker = exp(-1i*k*w0*t);
C1 = int(ker,0,0.5) + int(-ker,0.5,1)
double (C1)
