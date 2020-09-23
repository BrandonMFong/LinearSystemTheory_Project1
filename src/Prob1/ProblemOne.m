% Fourier series of a square wave.

fprintf('Problem 1!\n');
fprintf('Infinity value: %d\n', var.Constants.Constant.Problem1.Infinity);

fprintf('Testing square wave with input of t=1\n');
results = SquareWave(1,2*pi,1);
if ~isempty(results)
    fprintf('results is not empty\n');
end 

max = ((abs(var.Constants.Constant.Problem1.tmin) + abs(var.Constants.Constant.Problem1.tmax))/var.Constants.Constant.Problem1.tinc);
y = zeros(1,max);
idx = 1;

StatusRowOut = waitbar(0,sprintf('Calculating Square wave (main loop)')); % init progress
for t = var.Constants.Constant.Problem1.tmin : var.Constants.Constant.Problem1.tinc : var.Constants.Constant.Problem1.tmax
    y(1,idx) = SquareWave(t,eval(var.Constants.Constant.Problem1.omega),var.Constants.Constant.Problem1.V);
    idx = idx + 1;
    waitbar((idx)/(max),StatusRowOut,sprintf('Calculating Square wave (main loop)'));  % update progress
end
close(StatusRowOut); % terminate progress
t = var.Constants.Constant.Problem1.tmin : var.Constants.Constant.Problem1.tinc : var.Constants.Constant.Problem1.tmax
plot(t,y);
ylim([var.Constants.Constant.Problem1.ymin var.Constants.Constant.Problem1.ymax]);

% from text 
% syms C1 ker t
% w0 = 2*pi;k=1;
% ker = exp(-1i*k*w0*t);
% C1 = int(ker,0,0.5) + int(-ker,0.5,1)
% double (C1)
