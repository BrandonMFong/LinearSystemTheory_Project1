% Generate a sinc function in Matlab.

fprintf('Problem 3!\n');

%% SINC %%
max = ((abs(const.Problem3.tmin) + abs(const.Problem3.tmax))/const.Problem3.tinc);
y = zeros(1,max);
idx = 1;
StatusRowOut = waitbar(0,sprintf('Calculating Sinc function (main loop)')); % init progress
for t = const.Problem3.tmin : const.Problem3.tinc : const.Problem3.tmax
    y(1,idx) = const.Problem3.V * const.Problem3.T * sinc((const.Problem3.T*t)/2);
    idx = idx + 1;
    waitbar((idx)/(max),StatusRowOut,sprintf('Calculating Sinc function (main loop)'));  % update progress
end
close(StatusRowOut); % terminate progress

t = const.Problem3.tmin : const.Problem3.tinc : const.Problem3.tmax
% hold on 
figure('Name','Sinc');
plot(t,y);
ylim([const.Problem3.ymin const.Problem3.ymax]);
