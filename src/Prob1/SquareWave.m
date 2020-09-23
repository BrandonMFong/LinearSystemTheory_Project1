function out = SquareWave(t, omega, V)
    global const;
    out = 0;
    StatusRow = waitbar(0,sprintf('Calculating Square wave (inner loop)')); % init progress
    for k = 1:2:const.Problem1.Infinity % Inc by 2 for odd 
        A = 4*V;
        B = A/(k*pi);
        C = B*sin(k*omega*t);
        out = out + C;
        waitbar((k)/(const.Problem1.Infinity),StatusRow,sprintf('Calculating Square wave (inner loop)'));  % update progress
    end
    close(StatusRow); % terminate progress
end