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
        end
        function obj = pick_pack(obj, packages)
            obj.pack = obj.pack + packages;
        end
        function obj = release_pack(obj)
            obj.pack = 0;
        end
    end
end