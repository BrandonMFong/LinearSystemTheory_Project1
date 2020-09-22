% Fourier Series for an impulse train
fprintf('Problem 2!\n');
max = ((abs(var.Constants.Problem2.tmin) + abs(var.Constants.Problem2.tmax))/var.Constants.Problem2.tinc);
y = zeros(1,max);
idx = 1;
StatusRowOut = waitbar(0,sprintf('Calculating Impulse Train (main loop)')); % init progress
for t = var.Constants.Problem2.tmin : var.Constants.Problem2.tinc : var.Constants.Problem2.tmax
    y(1,idx) = ImpulseTrain(t);
    idx = idx + 1;
    waitbar((idx)/(max),StatusRowOut,sprintf('Calculating Impulse Train (main loop)'));  % update progress
end
close(StatusRowOut); % terminate progress
t = var.Constants.Problem1.tmin : var.Constants.Problem1.tinc : var.Constants.Problem1.tmax
plot(t,y);
ylim([-7 7]);
