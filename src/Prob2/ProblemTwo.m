% Fourier Series for an impulse train
fprintf('Problem 2!\n');

% from text 
for k=1:3 
    ker = exp(-1i * k * eval(const.Problem2.Omega0) * t);
    Ck = int(2*t*ker, 0, 0.5) + int(2 * (1 - t) * ker, 0.5, 1);
    simplify(Ck)
end