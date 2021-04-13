function assignment = Assign(m, run_times, packages, int_time, n)

drones(1:n) = drone;
load = zeros(1,m);
% packages = [12,7,15,8,9];
assignment = (1:1:n);
for i=1:m
    sources(i) = source(packages(i),run_times(i));
end

tot_time = 0;
r = 0;

for i = 1:m
    r = r + sources(i).runmax;
    load(i) = sources(i).cost * sources(i).runmax;
    tot_time = tot_time + load(i);
end
avg_time = 2*tot_time/n;
avg_run = r/m;
avg = avg_time/avg_run;
time = 0;

disp(load);
while max(load)>0
    [time_update, load, sources, drones, new] = fetch(sources, drones, load, n);
    time = time + time_update;
    assignment = cat(1,assignment,new);
    [time_update, sources, drones] = release(sources, drones, n);
    time = time + time_update;
    disp(load);
end

for i = 1:max(m,n)
    if i>n && i<=m
        disp(sources(i));
    elseif i>m && i<=n
        disp(drones(i));
    else
        disp(drones(i));
        disp(sources(i));
    end
end

disp(assignment);
% moves = hcost./run_times          % no. of moves for each drone
% 
% times = runs./moves               % time occupied
% 
% cost_run = runs.*run_times;
end

function [time_update,load, sources, drones, new] = fetch(sources, drones, load, n)
time_update = 0;
new = zeros(1,n);
    for i = 1:n
        [hcost, h_ind] = max(load);
        [sources(h_ind),pack, cost] = sources(h_ind).get_pack();
        if cost > 0
            load(h_ind) = load(h_ind) - sources(h_ind).cost;
            drones(i) = drones(i).pick_pack(pack, cost, h_ind);
            new(i) = h_ind;
        else
            [hcost, h_ind] = max(load(setdiff(1:length(load),h_ind)));
            [sources(h_ind),pack, cost] = sources(h_ind).get_pack();
            drones(i) = drones(i).pick_pack(pack, cost, h_ind);
            new(i) = h_ind;
        end
        if sources(h_ind).cost > time_update
            time_update = sources(h_ind).cost;
        end
    end
end

function [time_update, sources, drones] = release(sources, drones, n)
time_update = 0;
    for i = 1:n
        cost = sources(drones(i).pos).cost;        
        if sources(drones(i).pos).cost > time_update
            time_update = sources(drones(i).pos).cost;
        end
        drones(i) = drones(i).release_pack(cost);
    end
end