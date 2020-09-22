% Fourier series of a square wave.

fprintf('Problem 1!\n');
fprintf('Infinity value: %d\n', var.Constants.Infinity);

fprintf('Testing square wave with input of t=1\n');
results = SquareWave(1,2*pi,1);
if ~isempty(results)
    fprintf('results is not empty\n');
end 

max = ((abs(var.Constants.tmin) + abs(var.Constants.tmax))/var.Constants.tinc);
y = zeros(1,max);
idx = 1;

StatusRowOut = waitbar(0,sprintf('Calculating Square wave (main loop)')); % init progress
for t = var.Constants.tmin : var.Constants.tinc : var.Constants.tmax
    y(1,idx) = SquareWave(t,eval(var.Constants.omega),var.Constants.tinc);
    idx = idx + 1;
    waitbar((idx)/(max),StatusRowOut,sprintf('Calculating Square wave (main loop)'));  % update progress
end
close(StatusRowOut); % terminate progress

plot(t,y);
