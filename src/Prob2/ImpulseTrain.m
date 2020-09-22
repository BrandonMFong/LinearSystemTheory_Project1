function out = ImpulseTrain(t)
    global var;
    out = 0;
    for k = 1:var.Constants.Problem2.Infinity
        A = 2/var.Constants.Problem2.FundamentalPeriod; 
        B = cos(k*var.Constants.Problem2.Omega0*t);
        C = A*B;
        out = out + C;
    end
    out = 1/var.Constants.Problem2.FundamentalPeriod + out;
end