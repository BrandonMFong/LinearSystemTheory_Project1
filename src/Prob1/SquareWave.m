function out = SquareWave(t, omega, V)
    global var;
    out = 0;
    for k = 1:2:var.Constants.Infinity % Inc by 2 for odd 
        A = 4*V;
        B = A/(k*pi);
        C = B*sin(k*omega*t);
        out = out + C;
    end
end