classdef source
    properties
        packages
        cost
        runs
        remainder
        runmax
    end
    
    methods
        function obj = source(packages, cost)
            %source Construct an instance of this class
            obj.packages = packages;
            obj.cost = cost;
            obj.runmax = ceil(obj.packages/4);
            obj.runs = floor(obj.packages/4);
            obj.remainder = mod(obj.packages,4)
        end
        
        function [obj,packs] = get_pack(obj)
            if obj.packages >= 4
                packs = 4;
                obj.packages = obj.packages - 4;
            else
                packs = obj.packages;
                obj.packages = 0;
            end
        end
        
    end
end