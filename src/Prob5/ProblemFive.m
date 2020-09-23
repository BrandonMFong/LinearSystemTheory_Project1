% Time Scaling 

fprintf('Problem 5!\n');

%%% TIME DOMAIN
fprintf('\nTime scaling in the time domain with the rect() function \n');

max = ((abs(const.Problem5.tmin) + abs(const.Problem5.tmax))/const.Problem5.tinc);
y = zeros(1,max);
idx = 1;
StatusRowOut = waitbar(0,sprintf('Calculating Rect function before time scaling (main loop)')); % init progress
for t = const.Problem5.tmin : const.Problem5.tinc : const.Problem5.tmax
    y(1,idx) = const.Problem5.V * rect((t-const.Problem5.t0)/const.Problem5.T);
    idx = idx + 1;
    waitbar((idx)/(max),StatusRowOut,sprintf('Calculating Rect function (main loop)'));  % update progress
end
close(StatusRowOut); % terminate progress

t = const.Problem5.tmin : const.Problem5.tinc : const.Problem5.tmax
% hold on 
figure('Name','Rect, before time scaling');
plot(t,y);
ylim([const.Problem5.ymin const.Problem5.ymax]);

%% TIME SCALING 
max = ((abs(const.Problem5.tmin) + abs(const.Problem5.tmax))/const.Problem5.tinc);
y = zeros(1,max);
idx = 1;
StatusRowOut = waitbar(0,sprintf('Calculating Rect function (main loop)')); % init progress
for t = const.Problem5.tmin : const.Problem5.tinc : const.Problem5.tmax
    y(1,idx) = const.Problem5.V * rect((const.Problem5.TimeScalingFactor*(t-const.Problem5.t0))/const.Problem5.T);
    idx = idx + 1;
    waitbar((idx)/(max),StatusRowOut,sprintf('Calculating Rect function after time scaling (main loop)'));  % update progress
end
close(StatusRowOut); % terminate progress

t = const.Problem5.tmin : const.Problem5.tinc : const.Problem5.tmax
% hold on 
figure('Name','Rect, after time scaling');
plot(t,y);
ylim([const.Problem5.ymin const.Problem5.ymax]);
