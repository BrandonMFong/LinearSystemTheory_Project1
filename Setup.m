format long
clear

try 
    global var;
    var = jsondecode(fileread('Project.json'));

    % make output dir
    % probably do not need this 
    if ~exist('Outputs', 'dir')
        mkdir('Outputs')
    end 
    
    % Adding paths for project
    [rows, columns] = size(var.Paths);
    for r = 1:rows
        addpath(var.Paths(r).Path);
    end

catch exception
    throw(exception)
end

