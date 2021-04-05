classdef drone
    properties
        pos
        cost_inc
        pack
    end
    
    methods
        function obj = drone()
            %drone Construct an instance of this class
            obj.cost_inc = 0;
            obj.pack = 0;
            obj.pos = 0;
        end
        function obj = pick_pack(obj, packages, cost, no)
            obj.pack = obj.pack + packages;
            obj.cost_inc = obj.cost_inc + cost;
            obj.pos = no;
        end
        function obj = release_pack(obj, cost)
            obj.pack = 0;
            obj.pos = 0;
            obj.cost_inc = obj.cost_inc + cost;
        end
    end
end