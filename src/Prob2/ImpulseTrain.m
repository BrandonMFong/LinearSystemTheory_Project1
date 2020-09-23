function out = ImpulseTrain(t)
    global const;
    out = 0;
    StatusRow = waitbar(0,sprintf('Calculating Impulse Train (inner loop)')); % init progress
    for k = 1:const.Problem2.Infinity
        A = 2/const.Problem2.FundamentalPeriod; 
        B = cos(k*eval(const.Problem2.Omega0)*t);
        C = A*B;
        out = out + C;
        waitbar((k)/(const.Problem1.Infinity),StatusRow,sprintf('Calculating Impulse Train (inner loop)'));  % update progress
    end
    close(StatusRow); % terminate progress
    out = 1/const.Problem2.FundamentalPeriod + out;
end