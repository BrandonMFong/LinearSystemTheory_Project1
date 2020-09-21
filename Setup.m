format long
clear
try 
    if ~exist('Outputs', 'dir')
        mkdir('Outputs')
    end 
    var = jsondecode(fileread('Project.json'));
    [rows, columns] = size(var.Paths);
    for r = 1:rows
        addpath(var.Paths(r).Path);
    end
catch exception
    throw(exception)
end

% Defining constants
% const = Constants();

var = jsondecode(fileread('Project.json'));
% TODO foreach each constant, eval the dynamic variable
