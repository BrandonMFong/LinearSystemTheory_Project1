% Defines the class that holds all constants

classdef Constants
    properties
    end
    methods
        function obj = Constants() % Constructor
            var = jsondecode(fileread('Project.json'));
        end
    end
end