% Fourier Series for an impulse train
fprintf('Problem 2!\n');
max = ((abs(const.Problem2.tmin) + abs(const.Problem2.tmax))/const.Problem2.tinc);
y = zeros(1,max);
idx = 1;
StatusRowOut = waitbar(0,sprintf('Calculating Impulse Train (main loop)')); % init progress
for t = const.Problem2.tmin : const.Problem2.tinc : const.Problem2.tmax
    y(1,idx) = ImpulseTrain(t);
    idx = idx + 1;
    waitbar((idx)/(max),StatusRowOut,sprintf('Calculating Impulse Train (main loop)'));  % update progress
end
close(StatusRowOut); % terminate progress
t = const.Problem1.tmin : const.Problem1.tinc : const.Problem1.tmax;
% hold on
figure('Name','Impulse Train');
plot(t,y);
ylim([const.Problem2.ymin const.Problem2.ymax]);
