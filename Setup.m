format long
clear
try 
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

    % Define constants used in this project
    % for c = 1:size(var.Constants.Constant,1)
    %     fprintf('Name: %s\n', var.Constants(c).Constant.Name);
    %     fprintf('Value: %s\n', var.Constants(c).Constant.Value);
    %     eval([var.Constants(c).Constant.Name , ' = ', var.Constants(c).Constant.Value, ';']);
    % end 

catch exception
    throw(exception)
end
