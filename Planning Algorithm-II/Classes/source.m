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
        
        function [obj,packs, c] = get_pack(obj)
            if obj.packages >= 4
                packs = 4;
                obj.packages = obj.packages - 4;
                c = obj.cost;
            else
                if 1 <= obj.packages
                    packs = obj.packages;
                    obj.packages = 0;
                    c = obj.cost;
                else
                    packs = 0;
                    c = 0;
                end
            end
        end
        
    end
end