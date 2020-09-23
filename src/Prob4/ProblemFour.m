% Rectangular function and its Fourier Transform

fprintf('Problem 4!\n');

max = ((abs(const.Problem4.tmin) + abs(const.Problem4.tmax))/const.Problem4.tinc);
y = zeros(1,max);
idx = 1;
StatusRowOut = waitbar(0,sprintf('Calculating Rect function (main loop)')); % init progress
for t = const.Problem4.tmin : const.Problem4.tinc : const.Problem4.tmax
    y(1,idx) = const.Problem4.V * rect((t-const.Problem4.t0)/const.Problem4.T);
    idx = idx + 1;
    waitbar((idx)/(max),StatusRowOut,sprintf('Calculating Rect function (main loop)'));  % update progress
end
close(StatusRowOut); % terminate progress

t = const.Problem4.tmin : const.Problem4.tinc : const.Problem4.tmax
% hold on 
figure('Name','Rect');
plot(t,y);
ylim([const.Problem4.ymin const.Problem4.ymax]);

% TODO do fourier transform 
% might need to do the one from the project sheet 
max = ((abs(const.Problem4.tmin) + abs(const.Problem4.tmax))/const.Problem4.tinc);
y = zeros(1,max);
idx = 1;
StatusRowOut = waitbar(0,sprintf('Calculating Rect function (main loop)')); % init progress
for t = const.Problem4.tmin : const.Problem4.tinc : const.Problem4.tmax
    y(1,idx) = const.Problem4.V * rect((t-const.Problem4.t0)/const.Problem4.T);
    idx = idx + 1;
    waitbar((idx)/(max),StatusRowOut,sprintf('Calculating Rect function (main loop)'));  % update progress
end
close(StatusRowOut); % terminate progress

t = const.Problem4.tmin : const.Problem4.tinc : const.Problem4.tmax
% hold on 
figure('Name','Rect');
plot(t,y);
ylim([const.Problem4.ymin const.Problem4.ymax]);

