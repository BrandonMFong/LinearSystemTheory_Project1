function out = rect(in)
    if(abs(in) > 0.5) 
        out = 0;
    elseif(abs(in) < 0.5) 
        out = 1;
    else 
        out = 0.5; % When abs(in) == 0.5
    end
end