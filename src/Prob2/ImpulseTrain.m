function out = ImpulseTrain(t)
    global var;
    out = 0;
    StatusRow = waitbar(0,sprintf('Calculating Impulse Train (inner loop)')); % init progress
    for k = 1:var.Constants.Constant.Problem2.Infinity
        A = 2/var.Constants.Constant.Problem2.FundamentalPeriod; 
        B = cos(k*var.Constants.Constant.Problem2.Omega0*t);
        C = A*B;
        out = out + C;
        waitbar((k)/(var.Constants.Constant.Problem1.Infinity),StatusRow,sprintf('Calculating Impulse Train (inner loop)'));  % update progress
    end
    close(StatusRow); % terminate progress
    out = 1/var.Constants.Constant.Problem2.FundamentalPeriod + out;
end