% Fourier series of a square wave.

fprintf('Problem 1!\n');
fprintf('Infinity value: %d\n', const.Problem1.Infinity);

fprintf('Testing square wave with input of t=1\n');
results = SquareWave(1,2*pi,1);
if ~isempty(results)
    fprintf('results is not empty\n');
end 

max = ((abs(const.Problem1.tmin) + abs(const.Problem1.tmax))/const.Problem1.tinc);
y = zeros(1,max);
idx = 1;

StatusRowOut = waitbar(0,sprintf('Calculating Square wave (main loop)')); % init progress
for t = const.Problem1.tmin : const.Problem1.tinc : const.Problem1.tmax
    y(1,idx) = SquareWave(t,eval(const.Problem1.omega),const.Problem1.V);
    idx = idx + 1;
    waitbar((idx)/(max),StatusRowOut,sprintf('Calculating Square wave (main loop)'));  % update progress
end
close(StatusRowOut); % terminate progress
t = const.Problem1.tmin : const.Problem1.tinc : const.Problem1.tmax;
figure('Name','Square Wave');
plot(t,y);
ylim([const.Problem1.ymin const.Problem1.ymax]);

% from text 
% syms C1 ker t
% w0 = 2*pi;k=1;
% ker = exp(-1i*k*w0*t);
% C1 = int(ker,0,0.5) + int(-ker,0.5,1)
% double (C1)
