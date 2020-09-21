% Defines the class that holds all constants

classdef Constants
    properties
        Taxis;
        Waxis;
    end
    methods
        function obj = Constants() % Constructor
            var = jsondecode(fileread('Project.json'));
            obj.Taxis = var.Constants.Taxis;
            obj.Waxis = var.Constants.Waxis;
        end
    end
end