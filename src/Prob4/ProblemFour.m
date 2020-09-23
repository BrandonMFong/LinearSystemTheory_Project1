% Rectangular function and its Fourier Transform

fprintf('Problem 4!\n');

max = ((abs(const.Problem3.tmin) + abs(const.Problem3.tmax))/const.Problem3.tinc);
y = zeros(1,max);
idx = 1;
for t = const.Problem3.tmin : const.Problem3.tinc : const.Problem3.tmax
    y(1,idx) = const.Problem3.V * rect((t-const.Problem3.t0)/const.Problem3.T);
    idx = idx + 1;
end

t = const.Problem3.tmin : const.Problem3.tinc : const.Problem3.tmax
% hold on 
plot(t,y);
ylim([const.Problem3.ymin const.Problem3.ymax]);